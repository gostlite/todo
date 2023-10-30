// import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive/hive.dart';
// part 'database.g.dart';

@HiveType(typeId: 1)
class Database{
  @HiveField(0)
  List <dynamic> todo_list = [];

  //refrence our box
final _box = Hive.box('mybox');

void createIntitialData(){
  todo_list = [
    ["Make Tutorial", false],
    ["Do a workout", false]

  ];
}
void loadData(){
  todo_list = _box.get("TodoList");
}
}