import 'package:bloc_practice/data/cubit/loader/loading_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingCubit extends Cubit<LoadingCubitState> {
  LoadingCubit() : super(LoadingCubitState());

  void loadingStart() => emit(state.copyWith(isLoading: true));

  void loadingEnd() => emit(LoadingCubitState(isLoading: false));

  void toggleLoading() => emit(state.copyWith(isLoading: !state.isLoading));
}
