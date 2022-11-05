import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  }) : super(key: key);

  final String taskName;
  final bool taskCompleted;

  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25, top: 25),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),

            //task name
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
