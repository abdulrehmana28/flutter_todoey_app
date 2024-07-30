import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_todoey_app/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [Task(name: 'Add Your Tasks', isDone: false)];

  int get taskCount => _tasks.length;

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle, isDone: false);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
