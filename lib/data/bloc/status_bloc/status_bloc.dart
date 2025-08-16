import 'package:bloc_practice/data/bloc/status_bloc/status_event.dart';
import 'package:bloc_practice/data/bloc/status_bloc/status_state.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TaskStatusBloc extends Bloc<TaskEvent, TaskStatusState> {
  TaskStatusBloc(): super(const TaskStatusState( status: TaskStatus.init))

  {
    on<ChangeTaskStatusEvent>((event, emit) {
      emit(state.copyWith(status: event.status));
    });
  }
}
