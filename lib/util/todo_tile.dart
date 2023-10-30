import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String task;
  final bool isChecked;
  final Function(bool?)? onChanged;
  final Function(BuildContext)?deleteFunc;
  const TodoTile({super.key, required this.task, required this.isChecked, required this.onChanged, required this.deleteFunc});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:25, right: 25,top: 25),
      child: Slidable(endActionPane: ActionPane(

        motion: const StretchMotion(),
        children: [
          SlidableAction(onPressed: deleteFunc,icon: Icons.delete,backgroundColor: Colors.red.shade500,borderRadius: BorderRadius.circular(12),)
        ],
      ),
        child: Container(

          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12)
          ),

          child: Row(
            children: [
              Checkbox(value: isChecked, onChanged: onChanged,activeColor: Colors.black),
              const SizedBox(width: 10,),
              Text(task, style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : TextDecoration.none),)
            ],
          ),
        ),
      )
    );
  }
}

