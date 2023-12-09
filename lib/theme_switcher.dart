import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ThemeSwitcher extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  void switchTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
