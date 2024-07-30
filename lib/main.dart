import 'package:flutter/material.dart';
import 'package:flutter_todoey_app/model/task_data.dart';
import 'package:provider/provider.dart';

import 'screens/task_screen.dart';

void main() => runApp(const Todoey());

class Todoey extends StatelessWidget {
  const Todoey({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
