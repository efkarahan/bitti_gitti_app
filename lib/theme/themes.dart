import 'package:bitti_gitti/theme/text_themes.dart';
import 'package:bitti_gitti/theme/widget_themes/appbar_theme.dart';
import 'package:bitti_gitti/theme/widget_themes/bottom_appbar_theme.dart';
import 'package:bitti_gitti/theme/widget_themes/checkbox_theme.dart';
import 'package:bitti_gitti/theme/widget_themes/fab_theme.dart';
import 'package:bitti_gitti/theme/widget_themes/icon_theme.dart';
import 'package:bitti_gitti/theme/widget_themes/listtile_theme.dart';
import 'package:flutter/material.dart';

import 'widget_themes/bottom_sheet_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(brightness: Brightness.light),
    primaryColor: Colors.white,
    primaryColorDark: Colors.white,
    brightness: Brightness.light,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    listTileTheme: TListTileTheme.lightlistTileTheme,
    floatingActionButtonTheme: TFabTheme.lightFabTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    bottomAppBarTheme: TBottomAppBarTheme.lightBottomAppBarTheme,
    iconTheme: TIconTheme.lightIconTheme,
    textTheme: TTextTheme.lightTextTheme,
  );

  static ThemeData dark = ThemeData.dark(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(brightness: Brightness.dark),
    primaryColor: Colors.black,
    primaryColorDark: Colors.black,
    brightness: Brightness.dark,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    listTileTheme: TListTileTheme.darklistTileTheme,
    floatingActionButtonTheme: TFabTheme.darkFabTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    bottomAppBarTheme: TBottomAppBarTheme.darkBottomAppBarTheme,
    iconTheme: TIconTheme.darkIconTheme,
    textTheme: TTextTheme.darkTextTheme,
  );
}
