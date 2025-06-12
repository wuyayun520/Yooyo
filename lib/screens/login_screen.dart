import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'main_screen.dart';
import 'terms_of_service_screen.dart';
import 'privacy_policy_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with TickerProviderStateMixin {
  bool _isAgreed = true; // 默认勾选协议
  late AnimationController _logoAnimationController;
  late AnimationController _decorationAnimationController;
  late Animation<double> _logoScaleAnimation;
  late Animation<double> _decorationRotationAnimation;

  @override
  void initState() {
    super.initState();
    
    // Logo动画控制器
    _logoAnimationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    // 装饰元素动画控制器
    _decorationAnimationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    
    // Logo缩放动画
    _logoScaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _logoAnimationController,
      curve: Curves.elasticOut,
    ));
    
    // 装饰元素旋转动画
    _decorationRotationAnimation = Tween<double>(
      begin: 0.0,
      end: 2 * 3.14159,
    ).animate(CurvedAnimation(
      parent: _decorationAnimationController,
      curve: Curves.linear,
    ));
    
    // 启动动画
    _logoAnimationController.forward();
    _decorationAnimationController.repeat();
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    _decorationAnimationController.dispose();
    super.dispose();
  }

  void _enterApp() {
    if (_isAgreed) {
      HapticFeedback.lightImpact();
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => const MainScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          transitionDuration: const Duration(milliseconds: 800),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/yooyo_login_bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // 状态栏区域
              const SizedBox(height: 20),
              
              // 主要内容区域
              Expanded(
                child: Stack(
                  children: [
                    // 装饰星星 - 左上角
                    Positioned(
                      top: 120,
                      left: 60,
                      child: AnimatedBuilder(
                        animation: _decorationRotationAnimation,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: _decorationRotationAnimation.value,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.yellow.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.yellow.withOpacity(0.3),
                                    blurRadius: 15,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    
                    // 装饰星星 - 小的
                    Positioned(
                      top: 200,
                      left: 40,
                      child: AnimatedBuilder(
                        animation: _decorationRotationAnimation,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: -_decorationRotationAnimation.value,
                            child: Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.amber.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(4),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.amber.withOpacity(0.3),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    
                    // 中央Logo区域
                    Center(
                      child: AnimatedBuilder(
                        animation: _logoScaleAnimation,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: _logoScaleAnimation.value,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // 3D Yooyo Logo
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: ShaderMask(
                                    shaderCallback: (bounds) => const LinearGradient(
                                      colors: [
                                        Color(0xFFFFFFFF),
                                        Color(0xFFF0E6FF),
                                        Color(0xFFE1D4FF),
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ).createShader(bounds),
                                    child: const Text(
                                      'yooyo',
                                      style: TextStyle(
                                        fontSize: 110,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white,
                                        letterSpacing: -4,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(8, 8),
                                            blurRadius: 20,
                                            color: Color(0x40000000),
                                          ),
                                          Shadow(
                                            offset: Offset(4, 4),
                                            blurRadius: 10,
                                            color: Color(0x60E922DF),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    
                    // 装饰花朵 - 右侧
                    Positioned(
                      top: 150,
                      right: 30,
                      child: AnimatedBuilder(
                        animation: _decorationAnimationController,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: 1.0 + 0.1 * (_decorationAnimationController.value * 2 - 1).abs(),
                            child: Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    Colors.pink.withOpacity(0.8),
                                    Colors.orange.withOpacity(0.6),
                                    Colors.yellow.withOpacity(0.4),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink.withOpacity(0.3),
                                    blurRadius: 20,
                                    spreadRadius: 5,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.local_florist,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    
                    // 装饰相机 - 左下
                    Positioned(
                      bottom: 300,
                      left: 20,
                      child: AnimatedBuilder(
                        animation: _decorationAnimationController,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: 0.3 * (_decorationAnimationController.value * 2 - 1),
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.3),
                                    blurRadius: 15,
                                    spreadRadius: 3,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              
              // 底部区域
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  children: [
                    // Enter APP 按钮
                    Container(
                      width: double.infinity,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        gradient: const LinearGradient(
                          colors: [Colors.white, Color(0xFFF8F4FF)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 8),
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            blurRadius: 10,
                            offset: const Offset(0, -2),
                          ),
                        ],
                      ),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: _enterApp,
                          borderRadius: BorderRadius.circular(28),
                          child: const Center(
                            child: Text(
                              'Enter Yooyo',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFE922DF),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // 协议勾选区域
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isAgreed = !_isAgreed;
                            });
                            HapticFeedback.selectionClick();
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _isAgreed ? const Color(0xFF4CAF50) : Colors.transparent,
                              border: Border.all(
                                color: _isAgreed ? const Color(0xFF4CAF50) : Colors.white.withOpacity(0.6),
                                width: 2,
                              ),
                            ),
                            child: _isAgreed
                                ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 14,
                                  )
                                : null,
                          ),
                        ),
                        
                        const SizedBox(width: 12),
                        
                        // 协议文本
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                height: 1.4,
                              ),
                              children: [
                                const TextSpan(text: 'I have read and agree '),
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: const TextStyle(
                                    color: Color(0xFFFFF600),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFFFF600),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      HapticFeedback.lightImpact();
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const TermsOfServiceScreen(),
                                        ),
                                      );
                                    },
                                ),
                                const TextSpan(text: ' and '),
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: const TextStyle(
                                    color: Color(0xFFFFF600),
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xFFFFF600),
                                    fontWeight: FontWeight.w600,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      HapticFeedback.lightImpact();
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) => const PrivacyPolicyScreen(),
                                        ),
                                      );
                                    },
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
            ],
          ),
        ),
      ),
    );
  }
} 