import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
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
    _subscription = Connectivity().onConnectivityChanged.listen((_) async {
      // Check for Internet Connection //
      final hasInternet =
          await InternetConnectionChecker.createInstance().hasConnection;

      // Store Connection Status boolen //
      isConnected = hasInternet;

      // Notify Controller of connection status//
      _controller.add(hasInternet);

      if (!hasInternet) {
        toastification.show(
          title: Text("No Internet Connection"),
          type: ToastificationType.error,
          autoCloseDuration: Duration(seconds: 4),
        );
      } else if (!isFirstTime) {
        toastification.show(
          title: Text("Internet Connection Restored"),
          type: ToastificationType.success,
          autoCloseDuration: Duration(seconds: 4),
        );
      }

      isFirstTime = false;
    });
  }

  void dispose() {
    _subscription?.cancel();
    _controller.close();
  }
}
