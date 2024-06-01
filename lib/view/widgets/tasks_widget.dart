import 'package:bitti_gitti/bloc/task_bloc/task_bloc.dart';
import 'package:bitti_gitti/constants/padding_constans.dart';
import 'package:bitti_gitti/models/task.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class TasksContent extends StatefulWidget {
  const TasksContent({super.key, required this.taskList});
  final List<Task> taskList;

  @override
  State<TasksContent> createState() => _TasksContentState();
}

class _TasksContentState extends State<TasksContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: widget.taskList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(PaddingValues.paddingLow),
          child: ListTile(
            title: Text(widget.taskList[index].title,
                style: TextStyle(
                  decoration: widget.taskList[index].isDone
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
                maxLines: _ListTileConsts.maxLines),
            leading: Checkbox(
              value: widget.taskList[index].isDone,
              onChanged: (newValue) {
                context.read<TaskBloc>().toggleTask(index);
              },
            ),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                context.read<TaskBloc>().removeTask(index);
              },
            ),
          ),
        );
      },
    );
  }
}

class _ListTileConsts {
  static const maxLines = 4;
}
