import 'package:brainwave_matrix_intern_to_do_app/widgets/to_do_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text("To Do App"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ToDoItem(),
        ],
      ),
    );
  }
}
