import 'package:flutter_todo/models/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

@JsonSerializable(nullable: null)
class Todo {
  final int id;
  final String title;
  final bool completed;
  User user;

  Todo(this.id, this.title, this.completed, this.user);

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoToJson(this);
}
