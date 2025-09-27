import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_state.freezed.dart';

@freezed
class TaskStatusState with _$TaskStatusState {
  const factory TaskStatusState({
    @Default(TaskStatus.init) TaskStatus status,
  }) = _TaskStatusState;
}
