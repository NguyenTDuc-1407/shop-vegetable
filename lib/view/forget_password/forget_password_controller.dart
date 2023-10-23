import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/forget_password_router.dart';

class ForgetPasswordController extends GetxController {
  var checkInputEmail = TextEditingController();
  void onBackPage() {
    Get.back();
  }

  void onOtpPage() {
    Get.toNamed(ForgetPasswordRouter.otp);
  }
}
