import 'package:assignment_clone/basic_module/LoginScreen.dart';
import 'package:assignment_clone/basic_module/login_page.dart';
import 'package:flutter/material.dart';
import 'package:assignment_clone/basic_module/main_page.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Loginscreen());
  }
}
