import 'package:bitti_gitti/bloc/task_bloc/task_bloc.dart';
import 'package:bitti_gitti/bloc/theme_bloc/theme_bloc.dart';
import 'package:bitti_gitti/theme/themes.dart';
import 'package:bitti_gitti/view/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeBloc>(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => TaskBloc()..loadTasks(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, themeMode) {
          final themeMode = context.read<ThemeBloc>().state;
          return MaterialApp(
            themeAnimationStyle: AnimationStyle(),
            debugShowCheckedModeBanner: false,
            title: 'Bitti Gitti',
            themeMode: themeMode,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
