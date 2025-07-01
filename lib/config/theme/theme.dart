import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  textTheme: TextTheme(
    titleLarge: TextStyle(
      fontSize: 28,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      color: Color(0xFF808080),
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ),
  scaffoldBackgroundColor: Color(0xFFFEF6EB),
  appBarTheme: AppBarTheme(backgroundColor: Color(0xFFFEF6EB)),
);
