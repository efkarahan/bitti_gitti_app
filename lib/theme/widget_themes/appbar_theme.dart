import 'package:bitti_gitti/theme/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TAppBarTheme {
  TAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    scrolledUnderElevation: 0,
    titleSpacing: 0,
    backgroundColor: Colors.white,
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    foregroundColor: Colors.black,
    titleTextStyle: TTextTheme.lightTextTheme.headlineMedium,
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    scrolledUnderElevation: 0,
    titleSpacing: 0,
    backgroundColor: Colors.black87,
    systemOverlayStyle: SystemUiOverlayStyle.light,
    foregroundColor: Colors.white,
    titleTextStyle: TTextTheme.darkTextTheme.headlineMedium,
  );
}
