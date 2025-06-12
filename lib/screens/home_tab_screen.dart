import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/user_model.dart';
import 'user_profile_screen.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List<UserModel> users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadUserData();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131518),
      body: Column(
        children: [
          // 顶部图片
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
          
          // 用户卡片列表
          Expanded(
            child: isLoading 
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xFFE922DF),
                  ),
                )
              : ListView.builder(
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
        ],
      ),
    );
  }

  Widget _buildUserCard(UserModel user) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfileScreen(user: user),
          ),
        );
      },
      child: Container(
        height: 145,
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
        child: Row(
          children: [
            // 左侧背景图片
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
                        maxLines: null,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 