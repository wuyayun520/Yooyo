import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:math';
import '../models/user_model.dart';
import 'video_player_screen.dart';

class DiscoverTabScreen extends StatefulWidget {
  const DiscoverTabScreen({super.key});

  @override
  State<DiscoverTabScreen> createState() => _DiscoverTabScreenState();
}

class _DiscoverTabScreenState extends State<DiscoverTabScreen> {
  List<PostItem> _posts = [];
  List<String> _reportedPosts = []; // 存储已举报的帖子ID
  Map<String, int> _likeCounts = {}; // 存储点赞数量
  Set<String> _likedPosts = {}; // 存储已点赞的帖子ID
  Map<String, List<Comment>> _postComments = {}; // 存储帖子评论
  List<String> _reportedComments = []; // 存储已举报的评论ID
  bool _isLoading = true;

  // 预设评论模板
  final List<String> _commentTemplates = [
    "Amazing content! 🔥",
    "Love this! ❤️",
    "So cool! 😎",
    "Great job! 👏",
    "Awesome! ✨",
    "This is incredible! 🤩",
    "Perfect! 💯",
    "So inspiring! 🌟",
    "Beautiful work! 🎨",
    "Mind blown! 🤯",
    "Fantastic! 🎉",
    "Love the vibe! ✌️",
    "This made my day! 😊",
    "Absolutely stunning! 💫",
    "Can't stop watching! 👀",
    "Pure talent! 🎭",
    "This is art! 🖼️",
    "So creative! 💡",
    "Incredible skills! 🏆",
    "This hits different! 🎵",
  ];

  final List<String> _commentUserNames = [
    "MusicLover", "FestivalFan", "BeatDropper", "SoundWave", "RhythmSeeker",
    "MelodyMaker", "BassHead", "TuneChaser", "VibeCollector", "EchoFinder",
    "HarmonyHunter", "FrequencyFan", "AudioAddict", "SonicExplorer", "TempoTracker",
    "ChordChaser", "LyricLover", "SynthSeeker", "DrumBeater", "StringPuller",
  ];

  @override
  void initState() {
    super.initState();
    _loadPosts();
    _loadLikeData();
    _loadCommentData();
    _loadReportedComments();
  }

  // 加载评论数据
  Future<void> _loadCommentData() async {
    final prefs = await SharedPreferences.getInstance();
    final commentsJson = prefs.getString('post_comments') ?? '{}';
    final commentsMap = json.decode(commentsJson) as Map<String, dynamic>;
    
    _postComments = commentsMap.map((key, value) {
      final commentsList = (value as List<dynamic>).map((commentJson) {
        return Comment.fromJson(commentJson as Map<String, dynamic>);
      }).toList();
      return MapEntry(key, commentsList);
    });
    
    if (mounted) {
      setState(() {});
    }
  }

  // 保存评论数据
  Future<void> _saveCommentData() async {
    final prefs = await SharedPreferences.getInstance();
    final commentsMap = _postComments.map((key, value) {
      return MapEntry(key, value.map((comment) => comment.toJson()).toList());
    });
    final commentsJson = json.encode(commentsMap);
    await prefs.setString('post_comments', commentsJson);
  }

  // 获取帖子的评论数量
  int _getCommentCount(String postId) {
    if (!_postComments.containsKey(postId)) {
      // 如果没有保存的评论，生成1-10个随机评论
      _generateRandomComments(postId);
    }
    
    // 过滤掉已举报的评论后返回数量
    final comments = _postComments[postId] ?? [];
    final filteredComments = comments.where((comment) => 
      !_reportedComments.contains(comment.id)
    ).toList();
    
    return filteredComments.length;
  }

  // 获取已举报的评论列表
  Future<List<String>> _getReportedComments() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('reported_comments') ?? [];
  }

  // 获取过滤后的评论数量（异步版本，用于更准确的计算）
  Future<int> _getFilteredCommentCount(String postId) async {
    if (!_postComments.containsKey(postId)) {
      _generateRandomComments(postId);
    }
    
    final reportedComments = await _getReportedComments();
    final comments = _postComments[postId] ?? [];
    final filteredComments = comments.where((comment) => 
      !reportedComments.contains(comment.id)
    ).toList();
    
    return filteredComments.length;
  }

  // 生成随机评论
  void _generateRandomComments(String postId) {
    final random = Random();
    final commentCount = 1 + random.nextInt(10); // 1-10个评论
    final comments = <Comment>[];
    
    for (int i = 0; i < commentCount; i++) {
      final userName = _commentUserNames[random.nextInt(_commentUserNames.length)];
      final commentText = _commentTemplates[random.nextInt(_commentTemplates.length)];
      final hoursAgo = random.nextInt(72) + 1; // 1-72小时前
      
      comments.add(Comment(
        id: '${postId}_comment_$i',
        userName: userName,
        text: commentText,
        timestamp: DateTime.now().subtract(Duration(hours: hoursAgo)),
        isUserComment: false,
      ));
    }
    
    _postComments[postId] = comments;
    _saveCommentData();
  }

  // 加载点赞数据
  Future<void> _loadLikeData() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 加载点赞数量
    final likeCountsJson = prefs.getString('like_counts') ?? '{}';
    final likeCountsMap = json.decode(likeCountsJson) as Map<String, dynamic>;
    _likeCounts = likeCountsMap.map((key, value) => MapEntry(key, value as int));
    
    // 加载已点赞的帖子
    final likedPostsList = prefs.getStringList('liked_posts') ?? [];
    _likedPosts = likedPostsList.toSet();
    
    if (mounted) {
      setState(() {});
    }
  }

  // 保存点赞数据
  Future<void> _saveLikeData() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 保存点赞数量
    final likeCountsJson = json.encode(_likeCounts);
    await prefs.setString('like_counts', likeCountsJson);
    
    // 保存已点赞的帖子
    await prefs.setStringList('liked_posts', _likedPosts.toList());
  }

  // 获取帖子的点赞数量
  int _getLikeCount(String postId) {
    if (!_likeCounts.containsKey(postId)) {
      // 如果没有保存的数据，生成10-100的随机数
      final random = Random();
      _likeCounts[postId] = 10 + random.nextInt(91); // 10-100
      _saveLikeData(); // 保存新生成的数据
    }
    return _likeCounts[postId]!;
  }

  // 切换点赞状态
  Future<void> _toggleLike(String postId) async {
    setState(() {
      if (_likedPosts.contains(postId)) {
        // 取消点赞
        _likedPosts.remove(postId);
        _likeCounts[postId] = (_likeCounts[postId] ?? 0) - 1;
      } else {
        // 点赞
        _likedPosts.add(postId);
        _likeCounts[postId] = (_likeCounts[postId] ?? 0) + 1;
      }
    });
    
    await _saveLikeData();
    
    // 显示点赞反馈
    if (_likedPosts.contains(postId)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red[400],
                size: 20,
              ),
              const SizedBox(width: 12),
              const Text(
                'Liked!',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          backgroundColor: const Color(0xFF2A2D35),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          duration: const Duration(seconds: 1),
        ),
      );
    }
  }

  Future<void> _loadPosts() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/datauser.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final UserData userData = UserData.fromJson(jsonData);
      
      List<PostItem> allPosts = [];
      
      for (UserModel user in userData.allData) {
        for (var post in user.posts) {
          allPosts.add(PostItem(
            user: user,
            post: post,
          ));
        }
      }
      
      // 随机打乱帖子顺序，模拟社交媒体的动态流
      allPosts.shuffle();
      
      setState(() {
        _posts = allPosts;
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading posts: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 举报功能
  void _showReportDialog(PostItem postItem) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF2A2D35),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题
              Row(
                children: [
                  Icon(
                    Icons.report_outlined,
                    color: Colors.red[400],
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  const Text(
                    'Report Post',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              
              const Text(
                'Why are you reporting this post?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              
              const SizedBox(height: 16),
              
              // 举报选项
              _buildReportOption(
                'Inappropriate Content',
                Icons.warning_outlined,
                () => _reportPost(postItem, 'Inappropriate Content'),
              ),
              _buildReportOption(
                'Harassment or Bullying',
                Icons.person_off_outlined,
                () => _reportPost(postItem, 'Harassment or Bullying'),
              ),
              _buildReportOption(
                'Spam',
                Icons.block_outlined,
                () => _reportPost(postItem, 'Spam'),
              ),
              _buildReportOption(
                'Fake Profile',
                Icons.account_circle_outlined,
                () => _reportPost(postItem, 'Fake Profile'),
              ),
              _buildReportOption(
                'Other',
                Icons.more_horiz_outlined,
                () => _reportPost(postItem, 'Other'),
              ),
              
              const SizedBox(height: 20),
              
              // 取消按钮
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildReportOption(String title, IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF3A3D45),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white70,
              size: 20,
            ),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 执行举报
  void _reportPost(PostItem postItem, String reason) {
    Navigator.pop(context); // 关闭底部弹窗
    
    // 显示确认对话框
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF2A2D35),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Row(
            children: [
              Icon(
                Icons.report,
                color: Colors.red[400],
                size: 24,
              ),
              const SizedBox(width: 12),
              const Text(
                'Confirm Report',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to report this post for "$reason"?\n\nThis post will be hidden from your feed.',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                _executeReport(postItem, reason);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[400],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Report'),
            ),
          ],
        );
      },
    );
  }

  // 执行举报并隐藏帖子
  void _executeReport(PostItem postItem, String reason) {
    setState(() {
      _reportedPosts.add(postItem.post.postId);
    });
    
    // 显示成功提示
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green[400],
              size: 20,
            ),
            const SizedBox(width: 12),
            const Expanded(
              child: Text(
                'Post reported successfully and hidden from your feed',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF2A2D35),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  // 加载已举报的评论
  Future<void> _loadReportedComments() async {
    final prefs = await SharedPreferences.getInstance();
    _reportedComments = prefs.getStringList('reported_comments') ?? [];
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    // 过滤掉已举报的帖子
    final filteredPosts = _posts.where((post) => 
      !_reportedPosts.contains(post.post.postId)
    ).toList();

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
                  // 文字图片 - 使用Discover相关的图片
                  Positioned(
                    top: 59,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          // 帖子列表
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
                : filteredPosts.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.explore_outlined,
                              size: 64,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 16),
                            Text(
                              'No posts available',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      )
                    : RefreshIndicator(
                        color: const Color(0xFFE922DF),
                        onRefresh: _loadPosts,
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          itemCount: filteredPosts.length,
                          itemBuilder: (context, index) {
                            final postItem = filteredPosts[index];
                            return _buildPostCard(postItem);
                          },
                        ),
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostCard(PostItem postItem) {
    final isLiked = _likedPosts.contains(postItem.post.postId);
    final likeCount = _getLikeCount(postItem.post.postId);
    final commentCount = _getCommentCount(postItem.post.postId);

    return GestureDetector(
      onTap: () async {
        // 跳转到视频播放页面，并等待返回
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerScreen(
              user: postItem.user,
              post: postItem.post,
            ),
          ),
        );
        // 返回时重新加载点赞数据，确保数据同步
        await _loadLikeData();
        await _loadCommentData();
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2D35),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 用户信息头部
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // 用户头像
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xFFE922DF),
                        width: 2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24),
                      child: Image.asset(
                        postItem.user.icon,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  
                  const SizedBox(width: 12),
                  
                  // 用户名和简介
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          postItem.user.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          postItem.user.signature,
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 12,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  
                  // 举报按钮
                  GestureDetector(
                    onTap: () {
                      _showReportDialog(postItem);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.report_outlined,
                        color: Colors.red[400],
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // 帖子内容
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                postItem.post.message,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 1.4,
                ),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // 视频播放器
            if (postItem.post.videoUrl.isNotEmpty)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: VideoPlayerWidget(videoPath: postItem.post.videoUrl),
                ),
              ),
            
            // 互动按钮
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _toggleLike(postItem.post.postId);
                    },
                    child: Row(
                      children: [
                        Icon(
                          isLiked ? Icons.favorite : Icons.favorite_border,
                          color: isLiked ? Colors.red[400] : Colors.grey[400],
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          likeCount.toString(),
                          style: TextStyle(
                            color: isLiked ? Colors.red[400] : Colors.grey[400],
                            fontSize: 14,
                            fontWeight: isLiked ? FontWeight.w600 : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 24),
                  GestureDetector(
                    onTap: () {
                      // 阻止默认的卡片点击行为，这里可以添加评论功能
                    },
                    child: _buildActionButton(
                      icon: Icons.chat_bubble_outline,
                      label: commentCount.toString(),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey[400],
          size: 20,
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey[400],
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

class PostItem {
  final UserModel user;
  final PostModel post;

  PostItem({
    required this.user,
    required this.post,
  });
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  const VideoPlayerWidget({super.key, required this.videoPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      _controller = VideoPlayerController.asset(widget.videoPath);
      await _controller!.initialize();
      setState(() {
        _isInitialized = true;
      });
    } catch (e) {
      print('Error initializing video: $e');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _controller == null) {
      return Container(
        color: Colors.black,
        child: const Center(
          child: CircularProgressIndicator(
            color: Color(0xFFE922DF),
          ),
        ),
      );
    }

    return GestureDetector(
      onTap: () {
        setState(() {
          if (_controller!.value.isPlaying) {
            _controller!.pause();
          } else {
            _controller!.play();
          }
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          AspectRatio(
            aspectRatio: _controller!.value.aspectRatio,
            child: VideoPlayer(_controller!),
          ),
          if (!_controller!.value.isPlaying)
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 32,
              ),
            ),
        ],
      ),
    );
  }
}

// 评论数据模型
class Comment {
  final String id;
  final String userName;
  final String text;
  final DateTime timestamp;
  final bool isUserComment;

  Comment({
    required this.id,
    required this.userName,
    required this.text,
    required this.timestamp,
    required this.isUserComment,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userName': userName,
      'text': text,
      'timestamp': timestamp.toIso8601String(),
      'isUserComment': isUserComment,
    };
  }

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'] ?? '',
      userName: json['userName'] ?? '',
      text: json['text'] ?? '',
      timestamp: DateTime.parse(json['timestamp'] ?? DateTime.now().toIso8601String()),
      isUserComment: json['isUserComment'] ?? false,
    );
  }
} 