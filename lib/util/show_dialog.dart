import "package:flutter/material.dart";
import "package:todo/util/myactionbutton.dart";

class ShowDialog extends StatelessWidget {


  final TextEditingController mycontroller ;
  final VoidCallback save;
  final VoidCallback delete;
  const ShowDialog({super.key, required this.mycontroller, required this.save, required this.delete});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
        height:120 ,
        child: Column(
          children: [
            TextField(autocorrect: true,controller: mycontroller
              ,decoration: InputDecoration(border: OutlineInputBorder()),
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TodoBut(title: "Save", action:save),
              TodoBut(title: "Cancel", action:delete),
            ],
          )]
        )
      ),
    );
  }
}
