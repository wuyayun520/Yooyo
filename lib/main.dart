import 'package:flutter/material.dart';
import 'themes/app_theme.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const YooyoApp());
}

class YooyoApp extends StatelessWidget {
  const YooyoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yooyo',
      theme: AppTheme.lightTheme,
      home: const LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
