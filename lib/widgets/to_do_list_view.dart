import 'dart:developer';

import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:brainwave_matrix_intern_to_do_app/widgets/to_do_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoListView extends StatefulWidget {
  const ToDoListView({super.key});

  @override
  State<ToDoListView> createState() => _ToDoListViewState();
}

class _ToDoListViewState extends State<ToDoListView> {
  final items = [
    ToDoItemModel(
        content: "hello",
        currentDate: DateFormat.yMMMMd().format(DateTime.now()),
        checkBoxValue: false),
    ToDoItemModel(
        content: "hello",
        currentDate: DateFormat.yMMMMd().format(DateTime.now()),
        checkBoxValue: false),
    ToDoItemModel(
        content: "hello",
        currentDate: DateFormat.yMMMMd().format(DateTime.now()),
        checkBoxValue: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ToDoItem(
              toDoItemModel: items[index],
              onChanged: (value) {
                setState(() {
                  items[index].checkBoxValue =
                      value!; // Update the specific item's checkbox value

                  log("Checkbox at index $index updated to: ${items[index].checkBoxValue}");
                });
              });
        });
  }
}
