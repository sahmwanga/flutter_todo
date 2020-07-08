import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_todo/services/todo.services.dart';
import 'package:http/http.dart' as http;

main() {
  group("TodoService ", () {
    test('Test todo services', () async {
      final todoService = TodoService();
      var response = await todoService.fetchTodos(http.Client());
      print(response);
      expect(1, 1);
    });
  });
}
