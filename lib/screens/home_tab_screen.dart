import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';
import 'user_profile_screen.dart';
import 'in_app_purchases_page.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List<UserModel> users = [];
  bool isLoading = true;
  int _goldCoins = 0;
  Set<String> _viewedUsers = {}; // 存储已查看过的用户ID
  static const int VIEW_COST = 4; // 查看用户消耗的金币数

  @override
  void initState() {
    super.initState();
    loadUserData();
    _loadGoldCoins();
    _loadViewedUsers();
  }

  Future<void> _loadGoldCoins() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _goldCoins = prefs.getInt('textQuota') ?? 0;
    });
  }

  Future<void> _saveGoldCoins(int newAmount) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('textQuota', newAmount);
    setState(() {
      _goldCoins = newAmount;
    });
  }

  Future<void> _loadViewedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    final viewedList = prefs.getStringList('viewedUsers') ?? [];
    setState(() {
      _viewedUsers = viewedList.toSet();
    });
  }

  Future<void> _saveViewedUsers() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('viewedUsers', _viewedUsers.toList());
  }

  Future<void> loadUserData() async {
    try {
      final String jsonString = await rootBundle.loadString('assets/json/datauser.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final UserData userData = UserData.fromJson(jsonData);
      
      setState(() {
        users = userData.allData;
        isLoading = false;
      });
    } catch (e) {
      print('Error loading user data: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> _handleUserCardTap(UserModel user) async {
    final userId = user.name; // 使用用户名作为唯一标识
    final bool hasViewed = _viewedUsers.contains(userId);
    
    // 如果已经查看过，直接进入
    if (hasViewed) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => UserProfileScreen(user: user),
        ),
      );
      return;
    }
    
    // 重新加载最新的金币余额
    await _loadGoldCoins();
    
    // 检查金币是否足够
    if (_goldCoins < VIEW_COST) {
      _showInsufficientCoinsDialog();
      return;
    }
    
    // 消耗金币并记录已查看
    final newAmount = _goldCoins - VIEW_COST;
    await _saveGoldCoins(newAmount);
    
    _viewedUsers.add(userId);
    await _saveViewedUsers();
    
    // 显示消费提示
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Consumed $VIEW_COST Music Coins to view profile'),
        backgroundColor: const Color(0xFFE922DF),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        duration: const Duration(seconds: 2),
      ),
    );
    
    // 进入用户资料页面
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserProfileScreen(user: user),
      ),
    );
  }

  void _showInsufficientCoinsDialog() {
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
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE922DF), Color(0xFFFF6B9D)],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                'Insufficient Music Coins',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You need $VIEW_COST Music Coins to view this profile.',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFE922DF).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: const Color(0xFFE922DF).withOpacity(0.3),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.account_balance_wallet,
                      color: Color(0xFFE922DF),
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Current balance: $_goldCoins coins',
                      style: const TextStyle(
                        color: Color(0xFFE922DF),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFE922DF), Color(0xFFFF6B9D)],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () async {
                  Navigator.of(context).pop();
                  // 等待充值页面返回并刷新金币余额
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InAppPurchasesPage(),
                    ),
                  );
                  // 从充值页面返回后刷新金币余额
                  await _loadGoldCoins();
                },
                child: const Text(
                  'Get Coins',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131518),
      body: Column(
        children: [
          // 顶部图片和金币显示
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 479,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/yooyo_home_topbg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 金币余额显示
              Positioned(
                top: MediaQuery.of(context).padding.top + 16,
                right: 16,
                child: GestureDetector(
                  onTap: () async {
                    // 点击金币余额也可以跳转到充值页面
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InAppPurchasesPage(),
                      ),
                    );
                    // 从充值页面返回后刷新金币余额
                    await _loadGoldCoins();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xFFE922DF).withOpacity(0.5),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.music_note,
                          color: Color(0xFFE922DF),
                          size: 18,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '$_goldCoins',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          // 用户卡片列表
          Expanded(
            child: isLoading 
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFE922DF),
                  ),
                )
              : RefreshIndicator(
                  color: const Color(0xFFE922DF),
                  backgroundColor: const Color(0xFF2A2D35),
                  onRefresh: () async {
                    await _loadGoldCoins();
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      final user = users[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: _buildUserCard(user),
                      );
                    },
                  ),
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserCard(UserModel user) {
    final userId = user.name;
    final bool hasViewed = _viewedUsers.contains(userId);
    final bool canAfford = _goldCoins >= VIEW_COST;
    
    return GestureDetector(
      onTap: () => _handleUserCardTap(user),
      child: Container(
        height: 145,
        decoration: BoxDecoration(
          color: const Color(0xFF2A2D35),
          borderRadius: BorderRadius.circular(16),
          border: hasViewed 
            ? Border.all(color: const Color(0xFFE922DF).withOpacity(0.5), width: 1)
            : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Row(
              children: [
                // 左侧背景图片
                Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 145,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                        image: DecorationImage(
                          image: AssetImage(user.background),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // 锁定状态覆盖层（仅在金币不足时显示）
                    if (!canAfford && !hasViewed)
                      Container(
                        width: 120,
                        height: 145,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16),
                            bottomLeft: Radius.circular(16),
                          ),
                          color: Colors.black.withOpacity(0.7),
                        ),
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.lock,
                                color: Colors.red,
                                size: 32,
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Locked',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    // 状态标识（已查看和需要金币）
                    if (hasViewed || (canAfford && !hasViewed))
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                          decoration: BoxDecoration(
                            color: hasViewed 
                              ? const Color(0xFFE922DF).withOpacity(0.9)
                              : Colors.orange.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                hasViewed 
                                  ? Icons.check_circle
                                  : Icons.music_note,
                                size: 10,
                                color: Colors.white,
                              ),
                              const SizedBox(width: 3),
                              Text(
                                hasViewed 
                                  ? 'Viewed'
                                  : '$VIEW_COST coins',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
                
                // 右侧内容
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // 音乐节标题
                        Text(
                          '${user.name} Music Festival',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        
                        const SizedBox(height: 8),
                        
                        // 扩展的描述文字
                        Expanded(
                          child: Text(
                            user.introduction,
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                              height: 1.4,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.visible,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
} 