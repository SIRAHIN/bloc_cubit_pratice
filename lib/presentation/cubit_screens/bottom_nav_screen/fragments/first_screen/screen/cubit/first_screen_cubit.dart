import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/cubit/first_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckinOutCubit extends Cubit<CheckInOutState>{
  CheckinOutCubit():super(CheckInOutState());

  void checkIn(String time){
    emit(state.copyWith(
      status: checkStatus.checkin,
      checkInTime: time,
    ));
  }

  void checkOut(String time){
    emit(state.copyWith(
      status: checkStatus.checkout,
      checkOutTime: time,
    ));
  }
}