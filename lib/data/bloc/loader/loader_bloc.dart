import 'dart:math';

import 'package:bloc_practice/data/bloc/loader/loader_event.dart';
import 'package:bloc_practice/data/bloc/loader/loader_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingBloc extends Bloc<LoaderEvent, LoaderState> {
  LoadingBloc() : super(LoaderState(isLoading: false)) {
    on<SetLoadingStart>(
      (event, emit) => emit(
        LoaderState(isLoading: true),
      ),
    );

    on<SetLoadingEnd>(
      (event, emit) => emit(
        LoaderState(isLoading: false),
      ),
    );
  }
}
