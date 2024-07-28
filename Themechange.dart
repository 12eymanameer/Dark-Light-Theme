import 'package:flutter/material.dart';

class Themechange with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  bool _isStandardMode = false; // New property to handle custom standard mode

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  bool get isStandardMode => _isStandardMode;

  void setStandardMode(bool isStandard) {
    _isStandardMode = isStandard;
    notifyListeners();
  }
}
