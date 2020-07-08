import '../global.dart';
import 'dart:convert';
import '../models/todo.dart';
import 'package:http/http.dart' as http;

class TodoService {
  Future<List<Todo>> fetchTodos(http.Client client) async {
    final response = await client.get(SERVER_NAME);

    if (response.statusCode == 200) {
      List<dynamic> mapResponse = json.decode(response.body);
      final todoList = await mapResponse.map<Todo>((json) {
        return Todo.fromJson(json);
      }).toList();
      return todoList;
      // return Todo.fromJson(mapResponse[0]);
    } else {
      return [];
    }

    print(response);
  }
}
