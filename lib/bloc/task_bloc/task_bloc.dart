import 'dart:convert';
import 'package:bitti_gitti/models/task.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskBloc extends Cubit<List<Task>> {
  TaskBloc() : super([]);

  void addTask(Task task) {
    state.add(task);
    emit(List.from(state));
    _saveTasks();
  }

  void toggleTask(int index) {
    final task = state[index];
    task.isDone = !(task.isDone);
    emit(List.from(state));
    _saveTasks();
  }

  void removeTask(int index) {
    state.removeAt(index);
    emit(List.from(state));
    _saveTasks();
  }

  void removeAllTasks() {
    state.clear();
    emit(List.from(state));
    _saveTasks();
  }

  Future<void> _saveTasks() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('tasks', json.encode(state));
  }
 

  Future<void> loadTasks() async {
    final prefs = await SharedPreferences.getInstance();
    final tasksString = prefs.getString('tasks');
    if (tasksString != null) {
      final Iterable decoded = json.decode(tasksString);
      final tasks = decoded.map((task) => Task.fromJson(task)).toList();
      emit(tasks);
    }
  }
  
}
