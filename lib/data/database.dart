import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {

  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('Mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Coding",false],
    ];
  }

  // load the data from database
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  // update the Database
  void updateDataBase(){
    _myBox.put("TODOLIST",toDoList);
  }

}