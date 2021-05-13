import 'package:flutter/material.dart';

import 'package:todo/models/models.dart';

class TodoCard extends StatelessWidget {
  const TodoCard({
    Key? key,
    required this.todo,
  }) : super(key: key);
  final Todo todo;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      trailing: Checkbox(
        value: todo.completed,
        onChanged: (bool? value) {},
      ),
    );
  }
}
