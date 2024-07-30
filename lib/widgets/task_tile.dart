import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallback,
      required this.longPressCallback});

  final bool isChecked;

  final String taskTitle;
  final void Function(bool?)? checkBoxCallback;
  final void Function() longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      onLongPress: longPressCallback,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
