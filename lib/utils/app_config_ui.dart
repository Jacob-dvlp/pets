import 'package:flutter/material.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _materialColor = MaterialColor(0XFF101616, {
    50: Color(0XFF0e1414),
    100: Color(0XFF0d1212),
    200: Color(0XFF0b0f0f),
    300: Color(0XFF0a0d0d),
    400: Color(0XFF080b0b),
    500: Color(0XFF060909),
    600: Color(0XFF050707),
    700: Color(0XFF030404),
    800: Color(0XFF020202),
    900: Color(0x00000000),
  });

  static final ThemeData themeData = ThemeData(
      primarySwatch: _materialColor,
      primaryColor: const Color(0XFF101616),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: const Color(0XFF101616),
        ),
      ));
}
