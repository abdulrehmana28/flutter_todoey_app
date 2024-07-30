import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/model/task_data.dart';
import 'package:flutter_todoey_app/widgets/task_list.dart';
import 'package:provider/provider.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  //Widget buildBottomSheet(BuildContext context) => Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: SingleChildScrollView(child: AddTaskScreen()),
                  ));
        },
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(left: 30.0, top: 50.0, bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30.0,
                child: Icon(
                  color: Colors.lightBlueAccent,
                  Icons.list,
                  size: 35.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Todoey',
                style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Text(
                '${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
            ),
            child: TaskList(),
          ),
        ),
      ]),
    );
  }
}
