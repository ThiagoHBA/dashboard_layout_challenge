import 'package:flutter/material.dart';
import 'view/design/themes.dart';
import 'view/pages/main_screen/main_screen_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Challenge',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const MainScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
