import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  ///Setup colors for [LightTheme]

  static const _primaryColor = Color(0xFF170A4B);
  static const _accentColor = Color(0xFF70CF98);
  static const _backGroundColor = Color(0xFFFFFFFF);
  static const _appBarIconColor = Color(0xFF413A5D);
  static const _sideMenuIconColor = Color(0xFFD2CCE3);
  static const _titleTextColor = Color(0xFF413A5D);
  static const _commonTextColor = Color(0xFF6D6B7A);
  static const _selectedTextColor = Color(0xFF30537F);
  static const _selectedButtonColor = Color(0xFF21205E);
  static const _fillColor = Color(0xFFF7F6FB);

  ///Setup colors for [DarkTheme]

  static const _darkPrimaryColor = Color(0xFF170A4B);
  static const _darkAccentColor = Color(0xFF70CF98);
  static const _darkBackGroundColor = Color(0xFFFFFFFF);
  static const _darkAppBarIconColor = Color(0xFF413A5D);
  static const _darkSideMenuIconColor = Color(0xFFD2CCE3);
  static const _darkTitleTextColor = Color(0xFF413A5D);
  static const _darkCommonTextColor = Color(0xFF6D6B7A);
  static const _darkSelectedTextColor = Color(0xFF30537F);
  static const _darkSelectedButtonColor = Color(0xFF21205E);
  static const _darkFillColor = Color(0xFFF7F6FB);

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
    cardColor: _fillColor,
    primaryColor: _primaryColor,
    accentColor: _accentColor,
    buttonTheme: const ButtonThemeData(highlightColor: _selectedButtonColor),
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
      bodyText2: TextStyle(color: _selectedTextColor),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkBackGroundColor,
    appBarTheme: const AppBarTheme(
      elevation: 1,
      color: _darkBackGroundColor,
      iconTheme: IconThemeData(
        color: _darkAppBarIconColor,
      ),
    ),
    iconTheme: const IconThemeData(
      color: _darkSideMenuIconColor,
      size: 20.0,
    ),
    cardColor: _darkFillColor,
    primaryColor: _darkPrimaryColor,
    accentColor: _darkAccentColor,
    buttonTheme:
        const ButtonThemeData(highlightColor: _darkSelectedButtonColor),
    textTheme: const TextTheme(
      subtitle2: TextStyle(
        color: _darkTitleTextColor,
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        color: _darkCommonTextColor,
      ),
      headline6: TextStyle(
        color: _darkTitleTextColor,
      ),
      headline5: TextStyle(
        color: _darkTitleTextColor,
        fontWeight: FontWeight.bold,
      ),
      button: TextStyle(
        color: _darkCommonTextColor,
      ),
      bodyText1: TextStyle(
        color: _darkCommonTextColor,
        fontSize: 15,
      ),
      bodyText2: TextStyle(color: _darkSelectedTextColor),
    ),
  );
}
