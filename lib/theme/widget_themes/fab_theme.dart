import 'package:flutter/material.dart';

class TFabTheme {
  TFabTheme._();

  static FloatingActionButtonThemeData lightFabTheme =
      FloatingActionButtonThemeData(
    backgroundColor: Colors.grey[900],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    foregroundColor: Colors.white,
    iconSize: 40,
  );

  static FloatingActionButtonThemeData darkFabTheme =
      FloatingActionButtonThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    foregroundColor: Colors.black,
    iconSize: 40,
  );
}
