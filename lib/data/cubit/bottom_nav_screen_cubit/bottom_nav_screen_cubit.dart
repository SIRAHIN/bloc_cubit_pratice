import 'package:bloc_practice/data/cubit/bottom_nav_screen_cubit/bottom_nav_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavScreenCubit extends Cubit<BottomNavScreenState>{
  BottomNavScreenCubit() : super(BottomNavScreenState());

  void changeIndex(int index) {
    emit(BottomNavScreenState(currentIndex: index));
  }
}