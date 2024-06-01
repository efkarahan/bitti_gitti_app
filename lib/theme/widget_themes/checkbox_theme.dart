import 'package:flutter/material.dart';

class TCheckboxTheme {
  TCheckboxTheme._();

  static const CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStatePropertyAll(Colors.teal),
    fillColor: WidgetStatePropertyAll(Colors.white),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    checkColor: WidgetStatePropertyAll(Colors.teal[600]),
    fillColor: WidgetStatePropertyAll(Colors.grey[100]),
  );
}
