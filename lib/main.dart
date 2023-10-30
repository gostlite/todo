import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/database_dir/database.dart';
import "package:todo/todo_page.dart";

void main() async {
  // var path = Directory.current.path;
  // Hive
  //   ..init(path)
  //   ..registerAdapter(TodoDatabase() as TypeAdapter);
  // await Hive.initFlutter(); // Initialize Hive
  // Open a box and await its completion
  // var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Todo(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
