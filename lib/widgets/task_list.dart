import 'package:flutter/material.dart';

import '../model/task.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> task;

  TaskList(this.task);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.task[index].name,
          isChecked: widget.task[index].isDone,
          checkBoxCallback: (checkBoxState) {
            setState(() {
              widget.task[index].toggleCheckbox();
            });
          },
        );
      },
    );
  }
}
