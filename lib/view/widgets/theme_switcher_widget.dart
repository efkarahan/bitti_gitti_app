import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import '../../bloc/theme_bloc/theme_bloc.dart';

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({super.key});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  StateMachineController? controller;
  SMIInput<bool>? switchInput;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (switchInput == null) return;
        final isDark = switchInput?.value ?? false;
        context.read<ThemeBloc>().add(ThemeChange(!isDark));
        switchInput?.change(!isDark);
      },
      child: SizedBox(
        width: _SwitchSize.width,
        height: _SwitchSize.height,
        child: RiveAnimation.asset(
          'assets/animations/theme_switch.riv',
          fit: BoxFit.fill,
          stateMachines: const ["Switch Theme"],
          onInit: (artboard) {
            controller =
                StateMachineController.fromArtboard(artboard, "Switch Theme");
            if (controller == null) return;
            artboard.addController(controller!);
            switchInput = controller?.findInput("isDark");

            final themeMode = context.read<ThemeBloc>().state;

            switchInput?.change(themeMode == ThemeMode.dark);
          },
        ),
      ),
    );
  }
}

final class _SwitchSize {
  static const height = 48.00;
  static const width = 76.00;
}
