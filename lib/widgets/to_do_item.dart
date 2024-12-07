import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ToDoItem extends StatelessWidget {
  ToDoItem({super.key});
  String currentDate = DateFormat.yMMMMd().format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.all(12),
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
                  value: true,
                  onChanged: (p) {},
                ),
                const SizedBox(
                  width: 24,
                ),
                const Text("Task"),
              ],
            ),
            Text(
              currentDate,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
