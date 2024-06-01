import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    _loadTheme();
    on<ThemeChange>(_onThemeChanged);
  }

  void _loadTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDark = prefs.getBool('isDark') ?? false;
    add(ThemeChange(isDark));
  }

  void _onThemeChanged(ThemeChange event, Emitter<ThemeMode> emit) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDark', event.isDark);
    emit(event.isDark ? ThemeMode.dark : ThemeMode.light);
  }
}

