import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart' as ConnectivityResult;
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:toastification/toastification.dart';

@singleton
class InternetService {
  bool isConnected = false;
  final _controller = StreamController<bool>.broadcast();
  Stream<bool> get connectionStream => _controller.stream;

  StreamSubscription? _subscription;

  Future<void> initializeInternetService({bool isFirstTime = true}) async {
    _subscription = Connectivity().onConnectivityChanged.listen((result) async {
      if (result == ConnectivityResult.none) {
        isConnected = false;
        _controller.add(false); // notify listeners
        if (!isFirstTime) {
          toastification.show(
            title: Text("No Internet Connection"),
            type: ToastificationType.success,
            autoCloseDuration: Duration(seconds: 2),
          );
        }
      } else {
        final hasInternet =
            await InternetConnectionChecker.createInstance().hasConnection;
        isConnected = hasInternet;
        _controller.add(hasInternet); // notify listeners
        if(hasInternet && !isFirstTime) {
          toastification.show(
            title: Text("Internet Connection Restored"),
            type: ToastificationType.success,
            autoCloseDuration: Duration(seconds: 2),
          );
        }
      }
      isFirstTime = false;
    });
  }

  void dispose() {
    _subscription?.cancel();
    _controller.close();
  }
}
