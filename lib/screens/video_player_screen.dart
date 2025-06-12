import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:math';
import '../models/user_model.dart';

class VideoPlayerScreen extends StatefulWidget {
  final UserModel user;
  final PostModel post;

  const VideoPlayerScreen({
    super.key,
    required this.user,
    required this.post,
  });

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen>
    with TickerProviderStateMixin {
  late VideoPlayerController _videoController;
  late AnimationController _fadeController;
  bool _showControls = true;
  bool _isInitialized = false;
  
  // 点赞相关状态
  int _likeCount = 0;
  bool _isLiked = false;
  
  // 评论相关状态
  List<Comment> _comments = [];
  int _commentCount = 0;
  final TextEditingController _commentTextController = TextEditingController();
  List<String> _reportedComments = []; // 存储已举报的评论ID
  
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
    
    // 初始化视频播放器
    _initializeVideoPlayer();
    
    // 加载数据
    _loadAllData();
    
    // 控制条淡入淡出动画
    _fadeController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeController.forward();
  }

  // 加载所有数据
  Future<void> _loadAllData() async {
    await Future.wait([
      _loadLikeData(),
      _loadCommentData(),
      _loadReportedComments(),
    ]);
  }

  // 加载已举报的评论
  Future<void> _loadReportedComments() async {
    final prefs = await SharedPreferences.getInstance();
    _reportedComments = prefs.getStringList('reported_comments') ?? [];
    if (mounted) {
      setState(() {});
    }
  }

  // 保存已举报的评论
  Future<void> _saveReportedComments() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('reported_comments', _reportedComments);
  }

  // 加载评论数据
  Future<void> _loadCommentData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final commentsJson = prefs.getString('post_comments') ?? '{}';
      final commentsMap = json.decode(commentsJson) as Map<String, dynamic>;
      
      if (commentsMap.containsKey(widget.post.postId)) {
        final commentsList = (commentsMap[widget.post.postId] as List<dynamic>).map((commentJson) {
          return Comment.fromJson(commentJson as Map<String, dynamic>);
        }).toList();
        
        setState(() {
          _comments = commentsList;
          _commentCount = commentsList.length;
        });
      } else {
        // 如果没有保存的评论，生成1-10个随机评论
        _generateRandomComments();
      }
    } catch (e) {
      print('Error loading comment data: $e');
      _generateRandomComments();
    }
  }

  // 生成随机评论
  void _generateRandomComments() {
    final random = Random();
    final commentCount = 1 + random.nextInt(10); // 1-10个评论
    final comments = <Comment>[];
    
    for (int i = 0; i < commentCount; i++) {
      final userName = _commentUserNames[random.nextInt(_commentUserNames.length)];
      final commentText = _commentTemplates[random.nextInt(_commentTemplates.length)];
      final hoursAgo = random.nextInt(72) + 1; // 1-72小时前
      
      comments.add(Comment(
        id: '${widget.post.postId}_comment_$i',
        userName: userName,
        text: commentText,
        timestamp: DateTime.now().subtract(Duration(hours: hoursAgo)),
        isUserComment: false,
      ));
    }
    
    setState(() {
      _comments = comments;
      _commentCount = comments.length;
    });
    
    _saveCommentData();
  }

  // 保存评论数据
  Future<void> _saveCommentData() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final commentsJson = prefs.getString('post_comments') ?? '{}';
      final commentsMap = json.decode(commentsJson) as Map<String, dynamic>;
      
      commentsMap[widget.post.postId] = _comments.map((comment) => comment.toJson()).toList();
      
      final updatedCommentsJson = json.encode(commentsMap);
      await prefs.setString('post_comments', updatedCommentsJson);
      
      print('Comments saved successfully for post: ${widget.post.postId}');
    } catch (e) {
      print('Error saving comment data: $e');
    }
  }

  // 添加新评论
  Future<void> _addComment(String text) async {
    if (text.trim().isEmpty) return;
    
    final newComment = Comment(
      id: '${widget.post.postId}_user_comment_${DateTime.now().millisecondsSinceEpoch}',
      userName: 'You',
      text: text.trim(),
      timestamp: DateTime.now(),
      isUserComment: true,
    );
    
    setState(() {
      _comments.add(newComment);
      _commentCount = _comments.length;
    });
    
    await _saveCommentData();
    _commentTextController.clear();
    
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
            const Text(
              'Comment added!',
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

  // 举报评论
  void _showReportCommentDialog(Comment comment) {
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
                    'Report Comment',
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
                'Why are you reporting this comment?',
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
                () => _reportComment(comment, 'Inappropriate Content'),
              ),
              _buildReportOption(
                'Harassment or Bullying',
                Icons.person_off_outlined,
                () => _reportComment(comment, 'Harassment or Bullying'),
              ),
              _buildReportOption(
                'Spam',
                Icons.block_outlined,
                () => _reportComment(comment, 'Spam'),
              ),
              _buildReportOption(
                'Hate Speech',
                Icons.sentiment_very_dissatisfied_outlined,
                () => _reportComment(comment, 'Hate Speech'),
              ),
              _buildReportOption(
                'Other',
                Icons.more_horiz_outlined,
                () => _reportComment(comment, 'Other'),
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

  // 执行举报评论
  void _reportComment(Comment comment, String reason) {
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
            'Are you sure you want to report this comment for "$reason"?\n\nThis comment will be hidden from your view.',
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
                _executeReportComment(comment, reason);
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

  // 执行举报并隐藏评论
  void _executeReportComment(Comment comment, String reason) {
    setState(() {
      _reportedComments.add(comment.id);
    });
    
    _saveReportedComments();
    
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
                'Comment reported and hidden',
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
        duration: const Duration(seconds: 2),
      ),
    );
  }

  // 显示评论半屏弹窗
  void _showCommentsModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            // 过滤掉已举报的评论
            final filteredComments = _comments.where((comment) => 
              !_reportedComments.contains(comment.id)
            ).toList();

            return Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                color: Color(0xFF2A2D35),
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  // 顶部拖拽条和标题
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        // 拖拽条
                        Container(
                          width: 40,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(height: 16),
                        
                        // 标题
                        Row(
                          children: [
                            Icon(
                              Icons.chat_bubble_outline,
                              color: Colors.white,
                              size: 24,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Comments (${filteredComments.length})',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                  const Divider(color: Colors.grey, height: 1),
                  
                  // 评论列表
                  Expanded(
                    child: filteredComments.isEmpty
                        ? const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 48,
                                  color: Colors.grey,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  'No comments yet',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  'Be the first to comment!',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: filteredComments.length,
                            itemBuilder: (context, index) {
                              final comment = filteredComments[index];
                              return _buildCommentItem(comment, setModalState);
                            },
                          ),
                  ),
                  
                  const Divider(color: Colors.grey, height: 1),
                  
                  // 评论输入框
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        // 用户头像
                        Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFFE922DF),
                          ),
                          child: const Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        
                        const SizedBox(width: 12),
                        
                        // 输入框
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xFF3A3D45),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: _commentTextController,
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                hintText: 'Add a comment...',
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 12,
                                ),
                              ),
                              maxLines: null,
                              textInputAction: TextInputAction.send,
                              onSubmitted: (text) async {
                                await _addComment(text);
                                setModalState(() {
                                  // 更新模态框状态
                                });
                              },
                            ),
                          ),
                        ),
                        
                        const SizedBox(width: 8),
                        
                        // 发送按钮
                        GestureDetector(
                          onTap: () async {
                            await _addComment(_commentTextController.text);
                            setModalState(() {
                              // 更新模态框状态
                            });
                          },
                          child: Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE922DF),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  // 构建评论项
  Widget _buildCommentItem(Comment comment, StateSetter setModalState) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 用户头像
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: comment.isUserComment 
                  ? const Color(0xFFE922DF) 
                  : Colors.grey[600],
            ),
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 16,
            ),
          ),
          
          const SizedBox(width: 12),
          
          // 评论内容
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 用户名和时间
                Row(
                  children: [
                    Text(
                      comment.userName,
                      style: TextStyle(
                        color: comment.isUserComment 
                            ? const Color(0xFFE922DF) 
                            : Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _formatCommentTime(comment.timestamp),
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 4),
                
                // 评论文本
                Text(
                  comment.text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          
          // 举报按钮（只对非用户评论显示）
          if (!comment.isUserComment)
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // 先关闭评论弹窗
                _showReportCommentDialog(comment);
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Icon(
                  Icons.report_outlined,
                  color: Colors.red[400],
                  size: 18,
                ),
              ),
            ),
        ],
      ),
    );
  }

  // 格式化评论时间
  String _formatCommentTime(DateTime timestamp) {
    final now = DateTime.now();
    final difference = now.difference(timestamp);
    
    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inHours < 1) {
      return '${difference.inMinutes}m ago';
    } else if (difference.inDays < 1) {
      return '${difference.inHours}h ago';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}d ago';
    } else {
      return '${timestamp.day}/${timestamp.month}/${timestamp.year}';
    }
  }

  // 加载点赞数据
  Future<void> _loadLikeData() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 加载点赞数量
    final likeCountsJson = prefs.getString('like_counts') ?? '{}';
    final likeCountsMap = json.decode(likeCountsJson) as Map<String, dynamic>;
    final likeCounts = likeCountsMap.map((key, value) => MapEntry(key, value as int));
    
    // 加载已点赞的帖子
    final likedPostsList = prefs.getStringList('liked_posts') ?? [];
    final likedPosts = likedPostsList.toSet();
    
    setState(() {
      _likeCount = _getLikeCount(widget.post.postId, likeCounts);
      _isLiked = likedPosts.contains(widget.post.postId);
    });
  }

  // 获取帖子的点赞数量
  int _getLikeCount(String postId, Map<String, int> likeCounts) {
    if (!likeCounts.containsKey(postId)) {
      // 如果没有保存的数据，生成10-100的随机数
      final random = Random();
      return 10 + random.nextInt(91); // 10-100
    }
    return likeCounts[postId]!;
  }

  // 保存点赞数据
  Future<void> _saveLikeData() async {
    final prefs = await SharedPreferences.getInstance();
    
    // 加载现有数据
    final likeCountsJson = prefs.getString('like_counts') ?? '{}';
    final likeCountsMap = json.decode(likeCountsJson) as Map<String, dynamic>;
    final likeCounts = likeCountsMap.map((key, value) => MapEntry(key, value as int));
    
    final likedPostsList = prefs.getStringList('liked_posts') ?? [];
    final likedPosts = likedPostsList.toSet();
    
    // 更新数据
    likeCounts[widget.post.postId] = _likeCount;
    if (_isLiked) {
      likedPosts.add(widget.post.postId);
    } else {
      likedPosts.remove(widget.post.postId);
    }
    
    // 保存数据
    final updatedLikeCountsJson = json.encode(likeCounts);
    await prefs.setString('like_counts', updatedLikeCountsJson);
    await prefs.setStringList('liked_posts', likedPosts.toList());
  }

  // 切换点赞状态
  Future<void> _toggleLike() async {
    setState(() {
      if (_isLiked) {
        // 取消点赞
        _isLiked = false;
        _likeCount = _likeCount - 1;
      } else {
        // 点赞
        _isLiked = true;
        _likeCount = _likeCount + 1;
      }
    });
    
    await _saveLikeData();
    
    // 显示点赞反馈
    if (_isLiked) {
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

  void _initializeVideoPlayer() async {
    try {
      _videoController = VideoPlayerController.asset(widget.post.videoUrl);
      await _videoController.initialize();
      
      if (mounted) {
        setState(() {
          _isInitialized = true;
        });
      }
      
      // 监听播放状态变化
      _videoController.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
      
    } catch (e) {
      print('Video initialization error: $e');
      // 如果视频初始化失败，显示错误信息
      if (mounted) {
        setState(() {
          _isInitialized = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _videoController.dispose();
    _fadeController.dispose();
    _commentTextController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (_videoController.value.isPlaying) {
      _videoController.pause();
      _fadeController.forward();
    } else {
      _videoController.play();
      _autoHideControls();
    }
  }

  void _autoHideControls() {
    Future.delayed(const Duration(seconds: 3), () {
      if (_videoController.value.isPlaying && mounted) {
        _fadeController.reverse();
      }
    });
  }

  void _showControlsTemporarily() {
    if (_videoController.value.isPlaying) {
      _fadeController.forward();
      _autoHideControls();
    }
  }

  String _formatDuration(Duration duration) {
    String minutes = duration.inMinutes.toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: _showControlsTemporarily,
        child: Stack(
          children: [
            // 视频播放区域
            Center(
              child: _isInitialized 
                ? AspectRatio(
                    aspectRatio: _videoController.value.aspectRatio,
                    child: VideoPlayer(_videoController),
                  )
                : Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.user.background),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Color(0xFFE922DF),
                        ),
                      ),
                    ),
                  ),
            ),
            
            // 播放控制层
            if (_isInitialized)
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 暂停时的播放按钮
                    if (!_videoController.value.isPlaying)
                      GestureDetector(
                        onTap: _togglePlayPause,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.play_arrow,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),
                      ),
                    
                    // 播放中的暂停按钮 (点击屏幕时显示)
                    if (_videoController.value.isPlaying)
                      FadeTransition(
                        opacity: _fadeController,
                        child: GestureDetector(
                          onTap: _togglePlayPause,
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            
            // 视频控制条
            if (_isInitialized)
              Positioned(
                bottom: 140,
                left: 20,
                right: 20,
                child: FadeTransition(
                  opacity: _fadeController,
                  child: Column(
                    children: [
                      // 进度条
                      VideoProgressIndicator(
                        _videoController,
                        allowScrubbing: true,
                        colors: const VideoProgressColors(
                          playedColor: Color(0xFFE922DF),
                          bufferedColor: Colors.grey,
                          backgroundColor: Colors.white24,
                        ),
                      ),
                      const SizedBox(height: 10),
                      
                      // 时间显示
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _formatDuration(_videoController.value.position),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            _formatDuration(_videoController.value.duration),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            
            // 顶部返回按钮
            Positioned(
              top: 50,
              left: 20,
              child: FadeTransition(
                opacity: _fadeController,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
            
            // 右侧用户信息和互动区域
            Positioned(
              right: 20,
              bottom: 160,
              child: Column(
                children: [
                  // 用户头像
                  GestureDetector(
                    onTap: () {
                      // 可以添加查看用户资料的功能
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                          image: AssetImage(widget.user.icon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 点赞按钮
                  GestureDetector(
                    onTap: _toggleLike,
                    child: _buildActionButton(
                      _isLiked ? Icons.favorite : Icons.favorite_border,
                      _likeCount.toString(),
                      color: _isLiked ? Colors.red[400] : Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // 评论按钮
                  GestureDetector(
                    onTap: _showCommentsModal,
                    child: _buildActionButton(
                      Icons.chat_bubble_outline, 
                      _commentCount.toString(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                ],
              ),
            ),
            
            // 底部帖子信息
            Positioned(
              bottom: 50,
              left: 20,
              right: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 用户名
                  Text(
                    '@${widget.user.name.toLowerCase()}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  
                  // 帖子内容
                  Text(
                    widget.post.message,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.3,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String text, {Color? color}) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color ?? Colors.white,
            size: 25,
          ),
        ),
        if (text.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            text,
            style: TextStyle(
              color: color ?? Colors.white,
              fontSize: 12,
              fontWeight: color != null ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      ],
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