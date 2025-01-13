import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_model.freezed.dart'; // For Freezed-generated code
part 'todo_model.g.dart'; // For JSON serialization

@freezed
class TodoModel with _$TodoModel{

  const factory TodoModel({
    required String todoText,
    required String todoTime,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) => _$TodoModelFromJson(json);
}



