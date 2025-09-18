import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/first_screen/screen/cubit/first_screen_state.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/attendance_model/attendance_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckinOutCubit extends Cubit<CheckInOutState> {
  CheckinOutCubit() : super(CheckInOutState()) {
    _loadFromHive();
  }

  void _loadFromHive() {
    final box = HiveBoxConst.instance.checkStateBox;
    if (box.isNotEmpty) {
      final last = box.getAt(0);
      if (last != null) {
        emit(state.copyWith(
          checkInTime: last.checkIn,
          checkOutTime: last.checkOut,
          status: last.isCheckin ? checkStatus.checkin : checkStatus.checkout,
        ));
      }
    }
  }

  void checkIn(String time) async {
    final box = HiveBoxConst.instance.checkStateBox;

    if (box.isNotEmpty) {
      await box.clear();
    }
    final model =
        AttendanceModel(checkIn: time, isCheckin: true, checkOut: null);

    await box.add(model);

    emit(state.copyWith(
      status: checkStatus.checkin,
      checkInTime: time,
      checkOutTime: null,
    ));
  }

  void checkOut(String time) async {
    final box = HiveBoxConst.instance.checkStateBox;
    if (box.isNotEmpty) {
      final getCheckinTime = box.getAt(0);

      if (getCheckinTime == null) return;

      final model = AttendanceModel(
          checkIn: getCheckinTime.checkIn, checkOut: time, isCheckin: false);

      await box.putAt(0, model);
      emit(state.copyWith(
        status: checkStatus.checkout,
        checkOutTime: time,
      ));
    }
  }
}
