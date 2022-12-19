import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [];
  }

  void loadData() {
    todoList = _mybox.get('TODOLIST');
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", todoList);
  }
}
