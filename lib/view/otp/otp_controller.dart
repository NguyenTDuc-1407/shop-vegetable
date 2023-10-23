// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/otp_router.dart';
import 'package:timer_count_down/timer_controller.dart';

class OtpController extends GetxController {
  int timeStart = 10;
  final CountdownController countdownController =
      CountdownController(autoStart: true);

  void onRestStart() {
    countdownController.restart();
    update();
  }

  void pageLogin() {
    Get.toNamed(OtpRouter.Login_with_password);
  }

  void onBack() {
    Get.back();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
