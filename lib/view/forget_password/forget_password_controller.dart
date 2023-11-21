import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/forget_password_router.dart';

class ForgetPasswordController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkEmail = true;
  void onCheckEmail(String value) {
    if (!isEmailValid(value)) {
      checkEmail = false;
    } else {
      checkEmail = true;
    }
    update();
  }

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  void onBackPage() {
    Get.back();
  }

  void onOtpPage() {
    if (checkEmail == true && checkInputEmail.text != '') {
      checkInputEmail.clear();
      Get.toNamed(ForgetPasswordRouter.otp);
    } else {
      checkEmail = false;
    }
    update();
  }
}
