import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:io';
import 'dart:async';
import '../models/user_model.dart';
import 'chat_page.dart';

class MessageTabScreen extends StatefulWidget {
  const MessageTabScreen({super.key});

  @override
  State<MessageTabScreen> createState() => _MessageTabScreenState();
}

class _MessageTabScreenState extends State<MessageTabScreen> with WidgetsBindingObserver, AutomaticKeepAliveClientMixin {
  List<ChatListItem> _chatList = [];
  bool _isLoading = true;
  Timer? _refreshTimer;
  bool _isFirstBuild = true;
  DateTime? _lastRefreshTime;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadChatList();
    // 设置定时刷新，每30秒刷新一次
    _refreshTimer = Timer.periodic(const Duration(seconds: 30), (timer) {
      if (mounted) {
        _refreshChatList();
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 当tab切换到这个页面时刷新数据
    // 避免初始化时重复刷新，并添加防抖机制
    if (!_isFirstBuild) {
      final now = DateTime.now();
      if (_lastRefreshTime == null || 
          now.difference(_lastRefreshTime!).inSeconds > 2) {
        _refreshChatList();
        _lastRefreshTime = now;
      }
    } else {
      _isFirstBuild = false;
    }
  }

  @override
  void dispose() {
    _refreshTimer?.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // 当应用从后台回到前台时刷新数据
    if (state == AppLifecycleState.resumed) {
      _refreshChatList();
    }
  }

  Future<void> _loadChatList({bool showLoading = true}) async {
    if (showLoading) {
      setState(() {
        _isLoading = true;
      });
    }
    
    try {
      // 加载所有用户数据
      final String jsonString = await rootBundle.loadString('assets/json/datauser.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final UserData userData = UserData.fromJson(jsonData);
      
      // 获取文档目录
      final dir = await getApplicationDocumentsDirectory();
      
      List<ChatListItem> chatItems = [];
      
      // 检查每个用户是否有聊天记录
      for (UserModel user in userData.allData) {
        final file = File('${dir.path}/chat_history_${user.userId}.json');
        if (await file.exists()) {
          try {
            final jsonStr = await file.readAsString();
            final List<dynamic> messages = json.decode(jsonStr);
            
            if (messages.isNotEmpty) {
              // 获取最新消息
              final latestMessage = messages.last;
              final ChatMessage lastMsg = ChatMessage.fromJson(latestMessage);
              
              // 获取文件修改时间作为最后聊天时间
              final stat = await file.stat();
              
              chatItems.add(ChatListItem(
                user: user,
                lastMessage: lastMsg,
                lastMessageTime: stat.modified,
                isOnline: _generateRandomOnlineStatus(user.userId),
              ));
            }
          } catch (e) {
            print('Error reading chat history for ${user.name}: $e');
          }
        }
      }
      
      // 按时间排序（最新的在前面）
      chatItems.sort((a, b) => b.lastMessageTime.compareTo(a.lastMessageTime));
      
      setState(() {
        _chatList = chatItems;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading chat list: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  bool _generateRandomOnlineStatus(String userId) {
    // 基于userId生成稳定的在线状态
    return userId.hashCode % 3 == 0;
  }

  String _formatTime(DateTime time) {
    final now = DateTime.now();
    final difference = now.difference(time);
    
    if (difference.inMinutes < 60) {
      if (difference.inMinutes < 1) {
        return 'Just now';
      }
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hours ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays} days ago';
    } else {
      return '${time.year}-${time.month.toString().padLeft(2, '0')}-${time.day.toString().padLeft(2, '0')}';
    }
  }

  String _getMessagePreview(ChatMessage message) {
    switch (message.type) {
      case 'text':
        return message.text ?? '';
      case 'image':
        return '📷 Image';
      case 'audio':
        return '🎤 Voice message';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 保持页面状态
    return Scaffold(
      backgroundColor: const Color(0xFF131518),
      body: Stack(
        children: [
          // 顶部图片
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 220,
              width: double.infinity,
              child: Stack(
                children: [
                  // 背景图片
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/yooyo_message_topbg.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // 文字图片
                  Positioned(
                    top: 59,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        'assets/images/yooyo_message_top.png',
                        height: 42,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // 聊天列表 - 距离屏幕顶部110像素
          Positioned(
            top: 110,
            left: 0,
            right: 0,
            bottom: 0,
            child: _isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: Color(0xFFE922DF),
                    ),
                  )
                : _chatList.isEmpty
                    ? RefreshIndicator(
                        color: const Color(0xFFE922DF),
                        onRefresh: _refreshChatList,
                        child: ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: const [
                            SizedBox(height: 200),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.chat_outlined,
                                    size: 64,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'No conversations yet',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Start chatting with someone!',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        color: const Color(0xFFE922DF),
                        onRefresh: _refreshChatList,
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemCount: _chatList.length,
                          itemBuilder: (context, index) {
                            final chatItem = _chatList[index];
                            return _buildChatListItem(chatItem);
                          },
                        ),
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatListItem(ChatListItem chatItem) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () async {
            // 导航到聊天页面，并在返回时刷新数据
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatPage(user: chatItem.user),
              ),
            );
            // 从聊天页面返回时刷新数据
            _refreshChatList();
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF2A2D35),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // 用户头像和在线状态
                Stack(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(chatItem.user.icon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(width: 12),
                
                // 用户信息和消息
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 用户名和时间
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            chatItem.user.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            _formatTime(chatItem.lastMessageTime),
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 4),
                      
                      // 最新消息预览
                      Text(
                        _getMessagePreview(chatItem.lastMessage),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 刷新聊天列表（不显示loading状态）
  Future<void> _refreshChatList() async {
    _lastRefreshTime = DateTime.now();
    await _loadChatList(showLoading: false);
  }
}

class ChatListItem {
  final UserModel user;
  final ChatMessage lastMessage;
  final DateTime lastMessageTime;
  final bool isOnline;

  ChatListItem({
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isOnline,
  });
}

class ChatMessage {
  final String? text;
  final String? imagePath;
  final String? audioPath;
  final bool isMe;
  final String time;
  final String type;

  ChatMessage({
    this.text,
    this.imagePath,
    this.audioPath,
    required this.isMe,
    required this.time,
    required this.type,
  });

  static ChatMessage fromJson(Map<String, dynamic> json) => ChatMessage(
    text: json['text'],
    imagePath: json['imagePath'],
    audioPath: json['audioPath'],
    isMe: json['isMe'] ?? true,
    time: json['time'] ?? '',
    type: json['type'] ?? 'text',
  );
} 