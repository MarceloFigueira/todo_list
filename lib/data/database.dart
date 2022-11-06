import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

// reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st ever time opening this app
  void createInitData() {
    toDoList = [
      ["Tomar cafe", false],
      ["Ler um livro", false]
    ];
  }

  // load the from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
