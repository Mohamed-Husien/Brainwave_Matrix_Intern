import 'dart:developer';

import 'package:brainwave_matrix_intern_to_do_app/cubits/to_do_cubit/to_do_cubit.dart';
import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/to_do_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToDoListView extends StatefulWidget {
  const ToDoListView({super.key});

  @override
  State<ToDoListView> createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  @override
  void initState() {
    BlocProvider.of<ToDoCubit>(context).fetchAllToDo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToDoCubit, ToDoState>(
      builder: (context, state) {
        List<ToDoItemModel> items =
            (BlocProvider.of<ToDoCubit>(context).toDos ?? []).reversed.toList();

        return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ToDoItem(
                  toDoItemModel: items[index],
                  onChanged: (value) {
                    setState(() {});
                  });
            });
      },
    );
  }
}
