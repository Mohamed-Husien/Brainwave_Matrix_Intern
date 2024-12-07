import 'package:brainwave_matrix_intern_to_do_app/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('to_do');
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.yellow, // Set the AppBar color here
          elevation: 0, // Optional: Match your AppBar's elevation
        ),
      ),
      home: const HomeView(),
    );
  }
}
