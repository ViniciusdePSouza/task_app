import 'package:alura/data/task_inherited.dart';
import 'package:alura/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: TaskInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (contextNew) => FormScreen(taskContext: context,)));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
