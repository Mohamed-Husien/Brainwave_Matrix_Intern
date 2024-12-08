import 'package:brainwave_matrix_intern_to_do_app/widgets/custom_dialog_widget.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/to_do.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const CustomDialogWidget();
                });
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        // backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title: const Text("To Do App"),
          centerTitle: true,
        ),
        body: const ToDo());
  }
}
