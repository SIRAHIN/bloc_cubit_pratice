import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreenCubit extends Cubit<SecondScreenState> {
  SecondScreenCubit() : super(SecondScreenState(index: 0));

  void changeTabIndex({required int value}) {
    emit(SecondScreenState(index: value));
  }
}
