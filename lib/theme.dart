import 'package:flutter/material.dart';

final lightTHeme = ThemeData(
  inputDecorationTheme: InputDecorationTheme(
    border: _border,
    enabledBorder: _border,
    focusedBorder: _border,
  ),
  primarySwatch: Colors.green,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  iconTheme: IconThemeData(
    color: Colors.green,
  ),
);

final OutlineInputBorder _border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: BorderSide(
    color: Colors.green,
    width: 2,
    style: BorderStyle.solid,
  ),
);
