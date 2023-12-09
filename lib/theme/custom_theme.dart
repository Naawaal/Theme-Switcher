import 'package:flutter/material.dart';

class CustomThemeData {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF6200EE),
      secondary: Color(0xFF03DAC6),
      background: Color(0xFFEDEDED),
      surface: Color(0xFFEDEDED),
      onPrimary: Color(0xFFFFFFFF),
      onSecondary: Color(0xFF000000),
      onBackground: Color(0xFF000000),
      onSurface: Color(0xFF000000),
      error: Color(0xFFB00020),
      onError: Color(0xFFFFFFFF),
      brightness: Brightness.light,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.purple.withOpacity(0.2),
      selectedTileColor: Colors.purple.withOpacity(0.4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFBB86FC),
      secondary: Color(0xFF03DAC6),
      background: Color(0xFF121212),
      surface: Color(0xFF121212),
      onPrimary: Color(0xFF000000),
      onSecondary: Color(0xFF000000),
      onBackground: Color(0xFFFFFFFF),
      onSurface: Color(0xFFFFFFFF),
      error: Color(0xFFCF6679),
      onError: Color(0xFF000000),
      brightness: Brightness.dark,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: Colors.purple.withOpacity(0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
