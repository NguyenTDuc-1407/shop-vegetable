// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/login_with_password_router.dart';

class LoginWithPasswordController extends GetxController {
  var checkInputEmail = TextEditingController();
  var checkInputPassword = TextEditingController();
  var inputPassword = true.obs;
  var checkBox = true.obs;
  var iconPassword = false;
  String email = '';
  String password = '';

  @override
  void onInit() {
    checkInputPassword.text;
    inputPassword.value;
    super.onInit();
  }

  void hideInputPassword() {
    inputPassword.value = !inputPassword.value;
  }

  void actionCheckBox() {
    checkBox.value = !checkBox.value;
  }

  void actionIconPassword() {
    if (checkInputPassword.text == '') {
      iconPassword = false;
    } else {
      iconPassword = true;
    }
    update();
  }

  void onSignUpPage() {
    Get.toNamed(LoginWithPasswordRouter.sign_up);
  }

  void onNextPageForget() {
    Get.toNamed(LoginWithPasswordRouter.Forget_Password);
  }

  void onBackPage() {
    Get.toNamed(LoginWithPasswordRouter.Choice_login_Page);
  }

  void onNextPageHome() {
    Get.toNamed(LoginWithPasswordRouter.home);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
