import 'package:bitti_gitti/bloc/task_bloc/task_bloc.dart';
import 'package:bitti_gitti/constants/padding_constans.dart';
import 'package:bitti_gitti/bloc/theme_bloc/theme_bloc.dart';
import 'package:bitti_gitti/models/task.dart';
import 'package:bitti_gitti/view/widgets/bottom_appbar_widget.dart';
import 'package:bitti_gitti/view/widgets/bottom_sheet_widget.dart';
import 'package:bitti_gitti/view/widgets/tasks_widget.dart';
import 'package:bitti_gitti/view/widgets/theme_switcher_widget.dart';
import 'package:bitti_gitti/view/widgets/welcome_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _onPressFAB() async {
    await showModalBottomSheet(
      context: context,
      builder: (context) {
        return const BottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: _onPressFAB,
          child: const Icon(Icons.add_circle_outline_outlined),
        ),
        appBar: AppBar(
          leading: Image.asset('assets/images/logo.png', fit: BoxFit.contain),
          title: const Padding(
            padding: EdgeInsets.only(top: PaddingValues.paddingBasic),
            child: Text('Bitti Gitti'),
          ),
          actions: [
            BlocBuilder<ThemeBloc, ThemeMode>(
              builder: (context, state) {
                return const ThemeSwitcher();
              },
            )
          ],
        ),
        body: BlocBuilder<TaskBloc, List<Task>>(
          builder: (context, tasks) {
            return Column(
              children: [
                Expanded(
                  child: tasks.isNotEmpty
                      ? TasksContent(taskList: tasks)
                      : const WelcomeContent(),
                ),
              ],
            );
          },
        ),
        bottomNavigationBar: const BuildBottomBar());
  }
}
