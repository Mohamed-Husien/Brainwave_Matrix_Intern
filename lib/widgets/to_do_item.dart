import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem(
      {super.key, required this.toDoItemModel, required this.onChanged});

  final ToDoItemModel toDoItemModel;
  final void Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: toDoItemModel.checkBoxValue,
                  onChanged: onChanged,
                ),
                const SizedBox(
                  width: 24,
                ),
                Text(toDoItemModel.content),
              ],
            ),
            Text(
              toDoItemModel.currentDate,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}