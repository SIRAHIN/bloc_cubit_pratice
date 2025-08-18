import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/cubit/status_cubit/status_state.dart';
import 'package:bloc_practice/data/service/internet_service/internet_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusCubit extends Cubit<StatusState>{
  StatusCubit() : super(StatusState(status: TaskStatus.init));

  void changeStatus(TaskStatus status){
    if(getIt<InternetService>().isConnected == false) return;
    emit(state.copyWith(status: status));
  }
}