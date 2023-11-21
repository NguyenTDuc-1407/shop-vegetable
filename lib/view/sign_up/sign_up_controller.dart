// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/sign_up_router.dart';

class SignUpController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkInputPassword = TextEditingController();
  var checkInputConfiPass = TextEditingController();
  var checkEmail = true;
  var checkPassword = true;
  var checkConfPass = true;
  var inputPassword = true.obs;
  var inputConfiPass = true.obs;
  var iconConfiPass = false;
  var iconPassword = false;
  var showInfomation = false;

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;
  }

  void hideInputConfipass() {
    inputConfiPass.value = !inputConfiPass.value;
  }

  void onCheckNullEmail() {
    if (checkInputEmail.text == '') {
      checkEmail = false;
    } else {
      checkEmail = true;
    }
    update();
  }

  void actionIconPassword() {
    if (checkInputPassword.text == '') {
      iconPassword = false;
      checkPassword = false;
    } else {
      iconPassword = true;
      checkPassword = true;
    }
    if (checkInputConfiPass.text == '') {
      iconConfiPass = false;
      checkConfPass = false;
    } else {
      iconConfiPass = true;
      checkConfPass = true;
    }
    update();
  }

  void onCheckEmail(String value) {
    if (!isEmailValid(value)) {
      checkEmail = false;
    } else {
      checkEmail = true;
      onCheckNullEmail();
    }
    update();
  }

  bool isEmailValid(String email) {
    return RegExp(r'^[\w-\.]+@[a-zA-Z]+\.[a-zA-Z]{2,}$').hasMatch(email);
  }

  void onNewAccount() async {
    if (checkEmail == true &&
        checkInputPassword.text != '' &&
        checkInputEmail.text != '' &&
        checkInputConfiPass.text != '' &&
        checkInputPassword.text == checkInputConfiPass.text) {
      showInfomation = true;
            checkInputEmail.clear();
      checkInputPassword.clear();
      Get.toNamed(SignUpRouter.Login_with_password);
    } else {
      showInfomation = false;
    }
    onCheckNullEmail();
    actionIconPassword();
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
