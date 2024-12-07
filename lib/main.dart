import 'package:brainwave_matrix_intern_to_do_app/views/home_view.dart';
import 'package:flutter/material.dart';

void mian() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
    );
  }
}
