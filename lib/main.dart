import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_switcher/home_screen.dart';

import 'theme_switcher.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeSwitcher(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeSwitcher>(
      builder: (context, theme, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Theme Switcher',
          themeMode: ThemeMode.system,
          theme: theme.isDark ? ThemeData.dark() : ThemeData.light(),
          // Optional: If you want to apply a custom theme for dark mode.
          //darkTheme: ThemeData.dark(),
          home: const HomeScreen(),
        );
      },
    );
  }
}
