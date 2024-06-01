import 'package:bitti_gitti/bloc/task_bloc/task_bloc.dart';
import 'package:bitti_gitti/constants/padding_constans.dart';
import 'package:bitti_gitti/models/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _redFireIcon(),
              Text(
                "Let's Do Something",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontFamily: 'WelcomeFont', fontWeight: FontWeight.normal),
              ),
              _redFireIcon(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: PaddingValues.paddingHigh),
            child: TextFormField(
              style: Theme.of(context).textTheme.bodyMedium,
              controller: controller,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                suffixIcon: const Icon(
                  Icons.lightbulb_rounded,
                ),
                hintText: 'Enter your task',
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton.icon(
            onPressed: () {
              final String title = controller.text;
              if (title.isNotEmpty) {
                context.read<TaskBloc>().addTask(Task(title: title));
              }
              controller.clear();
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.save,
            ),
            label: Text(
              'SAVE',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontFamily: 'WelcomeFont'),
            ),
          ),
          Expanded(
            child: SizedBox.square(
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }

  FaIcon _redFireIcon() {
    return FaIcon(
      FontAwesomeIcons.cube,
      color: Theme.of(context).iconTheme.color,
    );
  }
}
