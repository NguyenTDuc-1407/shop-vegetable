// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/edit_profile_router.dart';

class ChangePasswordController extends GetxController {
  var checkInputOldPassword = TextEditingController();
  var checkInputNewPassword = TextEditingController();
  var checkInputConfiNewPassword = TextEditingController();
  var inputOldPassword = true.obs;
  var inputNewPassword = true.obs;
  var inputNewConfiPassword = true.obs;
  var iconOldPassword = false;
  var iconNewPassword = false;
  var iconNewConfiPassord = false;
  void hideInputOldPassword() {
    inputOldPassword.value = !inputOldPassword.value;
  }

  void hideInputNewPassword() {
    inputNewPassword.value = !inputNewPassword.value;
  }

  void hideInputNewConfipass() {
    inputNewConfiPassword.value = !inputNewConfiPassword.value;
  }

  void actionIconPassword() {
    if (checkInputOldPassword.text == '') {
      iconOldPassword = false;
    }
    if (checkInputOldPassword.text != '') {
      iconOldPassword = true;
    }
    if (checkInputNewPassword.text == '') {
      iconNewPassword = false;
    }
    if (checkInputNewPassword.text != '') {
      iconNewPassword = true;
    }
    if (checkInputConfiNewPassword.text == '') {
      iconNewConfiPassord = false;
    }
    if (checkInputConfiNewPassword.text != '') {
      iconNewConfiPassord = true;
    }
    update();
  }

  void onAccessChangePassword() {
    Get.toNamed(EditProflieRouter.home);
  }

  void onBack() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
