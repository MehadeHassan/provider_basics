import 'package:dio/dio.dart';
import 'package:todo/models/models.dart';

class PlaceHolderApi {
  PlaceHolderApi({Dio? dio}) : _dio = dio ?? Dio();

  final Dio _dio;

  Future<List<Todo>> fetchTodos() async {
    final response =
        await _dio.get('https://jsonplaceholder.typicode.com/todos');

    if (response.statusCode == 200) {
      final todoList = List.from(response.data);

      return todoList.map((e) => Todo.fromMap(e)).toList();
    } else {
      throw Exception('Unable to fetch Todos! code: ${response.statusCode}');
    }
  }
}
