import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusCubit extends Cubit<StatusState>{
  StatusCubit() : super(StatusState(status: TaskStatus.init));

  void changeStatus(TaskStatus status){
    emit(state.copyWith(status: status));
  }
}