import 'dart:async';

import 'package:bloc_practice/data/cubit/internet_status/internet_status_state.dart';
import 'package:bloc_practice/data/service/internet_service/internet_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetStatusCubit extends Cubit<InternetStatusState> {
  final InternetService service;
  StreamSubscription<bool>? _subscription;

  InternetStatusCubit({required this.service}) : super(InternetStatusInitial()) {
    _subscription = service.connectionStream.listen((isConnected) {
      if (isConnected) {
        emit(InternetStatusConnected());
      } else {
        emit(InternetStatusDisConnected());
      }
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
