// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class DetailNotificationController extends GetxController {
  var notification = Get.arguments[0];
  void onBack() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
