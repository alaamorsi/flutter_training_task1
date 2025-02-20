import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    super.onInit();
    _connectivity.onConnectivityChanged
        .listen((List<ConnectivityResult> connectivityResults) {
      _updateConnectionStatus(connectivityResults.first);
    });
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      Get.rawSnackbar(
        messageText: const Text(
          '  No internet connection',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
        isDismissible: false,
        duration: const Duration(days: 1),
        backgroundColor: Colors.red[400]!,
        icon: const Icon(
          Icons.wifi_off,
          color: Colors.white,
          size: 50,
        ),
        margin: EdgeInsets.zero,
        snackStyle: SnackStyle.GROUNDED,
      );
    } else {
      if (Get.isSnackbarOpen) {
        Get.closeCurrentSnackbar();
        Get.rawSnackbar(
          messageText: const Text(
            '  Back online',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          isDismissible: false,
          duration: const Duration(seconds: 5),
          backgroundColor: Colors.green,
          icon: const Icon(
            Icons.wifi,
            color: Colors.white,
            size: 50,
          ),
          margin: EdgeInsets.zero,
          snackStyle: SnackStyle.GROUNDED,
        );
      }
    }
  }
}
