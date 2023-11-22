import 'package:alura/components/task.dart';
import 'package:flutter/material.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({super.key});

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        duration: Duration(milliseconds: 1000),
        opacity: opacity ? 1 : 0,
        child: ListView(
          children: const [
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
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}

