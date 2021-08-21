import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'view/design/themes.dart';
import 'view/pages/main_screen/main_screen_page.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  static final darkThemeNotifier = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: darkThemeNotifier,
      builder: (BuildContext context, bool darkMode, Widget? child) =>
          MaterialApp(
        title: 'Layout Challenge',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
        home: const MainScreenPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
