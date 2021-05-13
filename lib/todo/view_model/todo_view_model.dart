import 'package:flutter/foundation.dart';
import 'package:todo/models/models.dart';
import 'package:todo/repository/todos_repository.dart';

class TodoViewModel with ChangeNotifier {
  final TodosRepository _todosRepository;
  TodoViewModel({required TodosRepository todosRepository})
      : _todosRepository = todosRepository;

  // var todos = <Todo>[];

  Future<List<Todo>> fetchTodos() async {
    return await _todosRepository.fetchTodos();
  }
}
