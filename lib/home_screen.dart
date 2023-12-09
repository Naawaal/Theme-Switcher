import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme_switcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeSwitcher>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.ac_unit),
            title: Text('Item $index'),
            onTap: () {},
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          themeProvider.switchTheme();
        },
        child: Icon(
            themeProvider.isDark ? Icons.wb_sunny : Icons.nightlight_round),
      ),
    );
  }
}
