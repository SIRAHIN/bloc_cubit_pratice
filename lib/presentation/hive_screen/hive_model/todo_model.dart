import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'todo_model.freezed.dart';
part 'todo_model.g.dart';

@freezed
@HiveType(typeId: 0)
class TodoModel with _$TodoModel {
  @HiveType(typeId: 0)
  factory TodoModel({
    @HiveField(0) @JsonKey(name: "title") required String title,
    @HiveField(1) @JsonKey(name: "isCompleted") @Default(false) bool isCompleted,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
