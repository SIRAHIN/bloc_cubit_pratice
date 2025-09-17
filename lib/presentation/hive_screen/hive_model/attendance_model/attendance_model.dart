import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
@HiveType(typeId: 5) // make sure this typeId is unique across your Hive models
class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    @HiveField(0)  required String checkIn,
    @HiveField(1)  String? checkOut,
    @HiveField(2)  @Default(false) bool isCheckin,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}
