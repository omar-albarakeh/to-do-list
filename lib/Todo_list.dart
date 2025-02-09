import 'package:flutter/material.dart';
import 'HomePage.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TodoList",
      home: Homepage(),
    );
  }
}
