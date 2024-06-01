import 'package:bitti_gitti/theme/text_themes.dart';
import 'package:flutter/material.dart';

class TListTileTheme {
  TListTileTheme._();

  static ListTileThemeData lightlistTileTheme = ListTileThemeData(
    iconColor: Colors.redAccent[700],
    tileColor: Colors.grey[300],
    textColor: Colors.black,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    titleTextStyle: TTextTheme.lightTextTheme.bodyMedium,
  );

  static ListTileThemeData darklistTileTheme = ListTileThemeData(
    iconColor: Colors.redAccent[400],
    tileColor: Colors.grey[900],
    textColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    titleTextStyle: TTextTheme.darkTextTheme.bodyMedium,
  );
}
