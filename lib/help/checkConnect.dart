// ignore_for_file: file_names

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';

class CheckConnect extends GetxController {
  final Connectivity _connectivity = Connectivity();

  @override
  void onInit() {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.onInit();
  }

  void _updateConnectionStatus(ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      // Get.toNamed(FirstRouter.None_internet);
      Get.rawSnackbar(
        snackPosition: SnackPosition.TOP,
        messageText: Text(
          'MẤT KẾT NỐI INTERNET',
          style: TextStyle(
            color: Colors.white,
            fontSize: MyDimensions.FONT_SIZE_H6,
          ),
        ),
        isDismissible: false,
        duration: const Duration(days: 1),
        backgroundColor: Colors.teal,
        icon: Icon(
          Icons.wifi_off,
          color: Colors.white,
          size: MyDimensions.FONT_SIZE_H6,
        ),
        margin: EdgeInsets.zero,
        snackStyle: SnackStyle.FLOATING,
      );
    } else {
      if (Get.isSnackbarOpen) {
        // Get.toNamed(SqlashRouter.Sqlash_Page);
        Get.closeCurrentSnackbar();
      }
    }
  }
}
