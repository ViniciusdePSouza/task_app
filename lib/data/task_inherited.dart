import 'package:alura/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Task> taskList = [
    Task(
        'Andar de Bike',
        'https://www.opovo.com.br/_midias/jpg/2020/02/17/750x500/1_atletico-11769013.jpg',
        3),
    Task(
        'Aprender Flutter',
        'https://www.opovo.com.br/_midias/jpg/2020/02/17/750x500/1_atletico-11769013.jpg',
        2),
    Task(
        'Ir ao cinema',
        'https://www.opovo.com.br/_midias/jpg/2020/02/17/750x500/1_atletico-11769013.jpg',
        4),
    Task(
        'Ir ao cinema',
        'https://www.opovo.com.br/_midias/jpg/2020/02/17/750x500/1_atletico-11769013.jpg',
        1),
  ];

  void addNewTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
