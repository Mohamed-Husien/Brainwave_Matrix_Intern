import 'package:brainwave_matrix_intern_to_do_app/models/to_do_item_model.dart';
import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({
    super.key,
    required this.toDoItemModel,
    required this.onChanged,
    this.onDoubleTap,
  });

  final ToDoItemModel toDoItemModel;
  final void Function(bool?)? onChanged;
  final Function()? onDoubleTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GestureDetector(
        onDoubleTap: onDoubleTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.black,
                  side: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                  value: toDoItemModel.checkBoxValue,
                  onChanged: onChanged,
                ),
                title: Text(
                  toDoItemModel.content,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    decoration: toDoItemModel.checkBoxValue
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: Colors.black,
                    decorationStyle: TextDecorationStyle.solid,
                    decorationThickness: 2.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                toDoItemModel.currentDate,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
