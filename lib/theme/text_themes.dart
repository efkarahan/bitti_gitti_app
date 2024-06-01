import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    // TitleTextStyle - Bitti Gitti Text //
    headlineMedium: const TextStyle().copyWith(
        fontFamily: 'TitleFont',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black),

    // BodyTextStyle - Body//
    bodyMedium: const TextStyle().copyWith(
        fontFamily: 'BodyFont',
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.black),
  );

  static TextTheme darkTextTheme = TextTheme(
    // TitleTextStyle - Bitti Gitti Text //
    headlineMedium: const TextStyle().copyWith(
        fontFamily: 'TitleFont',
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white),

    // BodyTextStyle - Body//
    bodyMedium: const TextStyle().copyWith(
        fontFamily: 'BodyFont',
        fontSize: 20,
        fontWeight: FontWeight.normal,
        color: Colors.white),
  );
}
