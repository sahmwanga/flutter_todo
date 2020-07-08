import 'package:flutter/material.dart';
import './services/todo.services.dart';
import 'package:http/http.dart' as http;

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // Text(snapshot.data[index].id.toString()),
  //                       Text(snapshot.data[index].title),
  //                       Text("Completed: ${snapshot.data[index].completed}"),
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: TodoService().fetchTodos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Text("${snapshot.data[index].id}"),
                      title: Text(snapshot.data[index].title),
                      subtitle: Text(
                        "Completed: ${snapshot.data[index].completed}",
                        style: snapshot.data[index].completed
                            ? TextStyle(color: Colors.green)
                            : TextStyle(color: Colors.red),
                      ),
                    ),
                  );
                });
          }
          if (snapshot.hasError) {
            return Text(snapshot.error);
          }

          return CircularProgressIndicator();
        });
  }
}
