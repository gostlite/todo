import "package:flutter/material.dart";
import "package:todo/database_dir/database.dart";
import "package:todo/util/show_dialog.dart";
import "package:todo/util/todo_tile.dart";
import 'package:hive_flutter/hive_flutter.dart';


class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}







class _TodoState extends State<Todo> {
  // final _mybox = Hive.box('mybox');
  // Database db = Database()
  List <dynamic> todo_list = [
  ["Make Tutorial", false],
  ["Do a workout", false]

  ];
  // db.createIntitialData();
  TextEditingController mycontroller = TextEditingController();

  void checkChanged(bool? val, index){
  setState(() {
    todo_list[index][1] = !todo_list[index][1];
  });
  }

void save(){
    setState(() {
      todo_list.add([mycontroller.text, false]);
      mycontroller.clear();


    });
    Navigator.of(context).pop();
}
void cancel()=>Navigator.of(context).pop();



  void createNewTask(){
    showDialog(context: context, builder: (context) {
      return ShowDialog(
        mycontroller: mycontroller
        ,save: save,
        delete: cancel,

      );
    },);
  }
  // delete task
  void deleteTask(int index){
    setState(() {
      todo_list.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        elevation: 0,
        title: const Text("TODO APP"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: createNewTask,child: Icon(Icons.add)),
      body:ListView.builder(
        itemCount: todo_list.length,
        itemBuilder:(context, index) =>
          TodoTile(task: todo_list[index][0],isChecked: todo_list[index][1],
              onChanged:(val) => checkChanged(val, index),deleteFunc:(context)=>deleteTask(index),),


      ) ,
    );

  }
}
