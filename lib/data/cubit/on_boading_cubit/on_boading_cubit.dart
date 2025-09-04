import 'package:bloc_practice/data/cubit/on_boading_cubit/on_boading_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoadingCubit extends Cubit<OnBoadingState> {
  OnBoadingCubit() : super(OnBoadingState(pageIndex: 0));
  void changePage(int index) {
    emit(OnBoadingState(pageIndex: index));
  }
}
