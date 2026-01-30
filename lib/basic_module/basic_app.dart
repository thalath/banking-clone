import 'package:flutter/material.dart';
import 'package:assignment_clone/basic_module/splash_screen.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
