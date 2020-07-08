import 'package:flutter/material.dart';
import './services/todo.services.dart';
import 'package:http/http.dart' as http;

class TodoScreen extends StatefulWidget {
  @override
  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: TodoService().fetchTodos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Text(snapshot.data[index].id.toString()),
                        Text(snapshot.data[index].title),
                        Text("Completed: ${snapshot.data[index].completed}"),
                      ],
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
