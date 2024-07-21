import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  // void checkboxCallBack(bool? checkBoxState) {
  //   setState(() {
  //     isChecked = checkBoxState!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked,
          toggleCheckboxState: (bool? checkBoxState) {
            setState(() {
              isChecked = checkBoxState!;
            });
          }),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckboxState});

  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckboxState,
    );
  }
}
