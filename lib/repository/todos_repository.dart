import 'package:todo/api/placeholder_api.dart';
import 'package:todo/models/models.dart';

class TodosRepository {
  final PlaceHolderApi _api;
  TodosRepository({PlaceHolderApi? api}) : _api = api ?? PlaceHolderApi();

  Future<List<Todo>> fetchTodos() async => _api.fetchTodos();

}
