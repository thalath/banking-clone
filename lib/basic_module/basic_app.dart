import 'package:assignment_clone/basic_module/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:assignment_clone/state_module/theme_logic.dart';
import 'package:provider/provider.dart';

class BasicApp extends StatelessWidget {
  const BasicApp({super.key});

  @override
  Widget build(BuildContext context) {
    int themeIndex = context.watch<ThemeLogin>().themeIndex;
    return MaterialApp(
      home: SplashScreen(),
      themeMode: themeIndex == 0
          ? ThemeMode.system
          : themeIndex == 1
          ? ThemeMode.light
          : ThemeMode.dark,
      theme: _buildTheme(),
      darkTheme: _buildDarkTheme(),
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      brightness: Brightness.light,

      // Main background (NOT pure white)
      scaffoldBackgroundColor: const Color(0xFFF5F5F5),

      colorScheme: const ColorScheme.light(
        primary: Color(0xFFE91E63), // pink accent
        secondary: Color(0xFF64B5F6),
        background: Color(0xFFF5F5F5),
        surface: Colors.white,
        error: Colors.redAccent,
      ),

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black87),
        titleTextStyle: TextStyle(
          color: Colors.black87,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),

      // Cards
      cardTheme: CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),

      // Icons
      iconTheme: const IconThemeData(color: Colors.black87),

      // Text
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: Colors.black87),
        bodyMedium: TextStyle(color: Colors.black54),
        bodySmall: TextStyle(color: Colors.black45),
        titleLarge: TextStyle(
          color: Colors.black87,
          fontWeight: FontWeight.bold,
        ),
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFE91E63),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      // Bottom navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFE91E63),
        unselectedItemColor: Colors.black45,
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    final Color backgoundColor = const Color(0xFF0D1B2A);
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgoundColor,
      textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.amber),
      cardTheme: CardThemeData(color: Color(0xFF242424)),
      iconTheme: IconThemeData(color: Colors.blue),
      colorScheme: const ColorScheme.dark(
        background: Color(0xFF121212),
        surface: Color(0xFF1E1E1E),
        primary: Color(0xFFE91E63),
      ),
      cardColor: Colors.yellow,
    );
  }
}
