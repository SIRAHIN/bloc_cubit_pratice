import 'package:hive_flutter/hive_flutter.dart';
part 'todo_model.g.dart';

@HiveType(typeId: 0)
class TodoModel {
  @HiveField(0)
  String title;
  @HiveField(1)
  bool isCompleted;
  TodoModel({required this.title, this.isCompleted = false});
}