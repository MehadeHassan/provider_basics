import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/home/home.dart';
import 'package:todo/models/models.dart';
import 'package:todo/repository/repository.dart';
import 'package:todo/todo/todo.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  static Route route() => MaterialPageRoute(
      builder: (context) => FutureProvider<List<Todo>>(
            create: (_) => TodoViewModel(
              todosRepository: context.read<TodosRepository>(),
            ).fetchTodos(),
            initialData: [],
            lazy: false,
            child: TodosPage(),
          ));

  @override
  Widget build(BuildContext context) {
    final todos = context.watch<List<Todo>>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Future Provider'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        physics: BouncingScrollPhysics(),
        itemCount: todos.length,
        itemBuilder: (_, int index) => TodoCard(todo: todos[index]),
      ),
    );
  }
}
