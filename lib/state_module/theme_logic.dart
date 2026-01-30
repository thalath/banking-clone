import 'package:flutter/material.dart';

class ThemeLogin extends ChangeNotifier {
  int _themeIndex = 0;
  int get themeIndex => _themeIndex;
  void changeToSystemMode() {
    _themeIndex = 0;
    notifyListeners();
  }

  void changeTOLightMode() {
    _themeIndex = 1;
    notifyListeners();
  }

  void chaneToDarkMode() {
    _themeIndex = 2;
    notifyListeners();
  }
}
