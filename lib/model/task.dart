class Task {
  Task({required this.name, required this.isDone});

  String name;
  bool isDone;

  void toggleCheckbox() {
    isDone = !isDone;
  }
}
