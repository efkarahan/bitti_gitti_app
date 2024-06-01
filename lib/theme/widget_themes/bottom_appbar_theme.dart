import 'package:flutter/material.dart';

class TBottomAppBarTheme {
  TBottomAppBarTheme._();

  static BottomAppBarTheme lightBottomAppBarTheme = BottomAppBarTheme(
      surfaceTintColor: Colors.blueGrey,
      color: Colors.brown[50],
      shape: const CircularNotchedRectangle());

  static BottomAppBarTheme darkBottomAppBarTheme = const BottomAppBarTheme(
      surfaceTintColor: Colors.white,
      color: Colors.black,
      shape: CircularNotchedRectangle());
}
