import 'package:flutter/material.dart';
import 'home_tab_screen.dart';
import 'discover_tab_screen.dart';
import 'message_tab_screen.dart';
import 'profile_tab_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  
  final List<Widget> _pages = [
    const HomeTabScreen(),
    const DiscoverTabScreen(),
    const MessageTabScreen(),
    const ProfileTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 主要内容页面
          IndexedStack(
            index: _currentIndex,
            children: _pages,
          ),
          
          // 浮动底部导航栏
          Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: Container(
              margin: const EdgeInsets.all(32),
              height: 62,
              decoration: BoxDecoration(
                color: const Color(0xFF252D37),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 25,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildTabItem(0, 'tab_1'),
                  _buildTabItem(1, 'tab_2'),
                  _buildTabItem(2, 'tab_3'),
                  _buildTabItem(3, 'tab_4'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, String iconName) {
    final bool isSelected = _currentIndex == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.white.withOpacity(0.1) : Colors.transparent,
        ),
        child: Center(
          child: Image.asset(
            'assets/images/${isSelected ? 'tab_pre' : 'tab_nor'}/${iconName}_${isSelected ? 'pre' : 'nor'}.png',
            width: 30,
            height: 30,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              // 如果图片加载失败，显示一个占位图标
              return Icon(
                Icons.error,
                size: 30,
                color: Colors.red,
              );
            },
          ),
        ),
      ),
    );
  }
} 