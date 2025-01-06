import 'package:bloc_practice/data/cubit/loader/loading_cubit_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingCubit extends Cubit<LoadingCubitState> {
  LoadingCubit() : super(LoadingCubitState(isLoading: false));

  void loadingStart() => emit(LoadingCubitState(isLoading: true));

  void loadingEnd() => emit(LoadingCubitState(isLoading: false));
}
