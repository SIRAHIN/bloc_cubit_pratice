import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';

class TaskEvent{}

class ChangeTaskStatusEvent extends TaskEvent {
  final TaskStatus status;
  ChangeTaskStatusEvent(this.status);
}