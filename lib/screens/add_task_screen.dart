import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.addTaskCallBack);

  late String newTaskTitle;
  final Function addTaskCallBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'ADD TASK',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlue,
                fontWeight: FontWeight.w400),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newValue) {
              newTaskTitle = newValue;
            },
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent),
            child: const Text(
              'Add',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
          )
        ],
      ),
    );
  }
}
