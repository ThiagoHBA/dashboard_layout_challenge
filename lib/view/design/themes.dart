import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColor = Color(0xFF170A4B);
  static const _secundaryColor = Color(0xFF70CF98);

  static const _backGroundColor = Color(0xFFFFFFFF);

  static const _appBarIconColor = Color(0xFF413A5D);
  static const _sideMenuIconColor = Color(0xFFD2CCE3);

  static const _titleTextColor = Color(0xFF413A5D);
  static const _commonTextColor = Color(0xFFD2CCE3);
  static const _highLightTextColor = Color(0xFF170A4B);
  static const _selectedTextColor = Color(0xFF30537F);

  static const _selectedButtonColor = Color(0xFF21205E);
  static const _fillColor = Color(0xFFF7F6FB);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _backGroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 1,
      color: _backGroundColor,
      iconTheme: IconThemeData(
        color: _appBarIconColor,
      ),
    ),
    iconTheme: const IconThemeData(
      color: _sideMenuIconColor,
      size: 20.0,
    ),
    primaryColor: _primaryColor,
    textTheme: const TextTheme(
      subtitle2: TextStyle(
        color: _titleTextColor,
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        color: _commonTextColor,
      ),
      headline6: TextStyle(
        color: _titleTextColor,
      ),
      headline5: TextStyle(
        color: _titleTextColor,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: _commonTextColor,
      ),
      bodyText1: TextStyle(
        color: _commonTextColor,
        fontSize: 15,
      ),
    ),
  );
}
