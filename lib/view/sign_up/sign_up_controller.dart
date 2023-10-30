// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/sign_up_router.dart';

class SignUpController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkInputPassword = TextEditingController();
  var checkInputConfiPass = TextEditingController();
  var inputPassword = true.obs;
  var inputConfiPass = true.obs;
  var iconConfiPass = false;
  var iconPassword = false;

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;
  }

  void hideInputConfipass() {
    inputConfiPass.value = !inputConfiPass.value;
  }

  void actionIconPassword() {
    if (checkInputPassword.text == '') {
      iconPassword = false;
    }
    if (checkInputPassword.text != '') {
      iconPassword = true;
    }
    if (checkInputConfiPass.text == '') {
      iconConfiPass = false;
    }
    if (checkInputConfiPass.text != '') {
      iconConfiPass = true;
    }
    update();
  }

  void onLoginPage() {
    Get.toNamed(SignUpRouter.Login_with_password);
  }

  void onBackPage() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
