import 'package:flutter/material.dart';

class TodoBut extends StatelessWidget {
final String title;
final VoidCallback action;
  const TodoBut({super.key,required this.title,required this.action
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: action, child:Text(title)

    );
  }
}

