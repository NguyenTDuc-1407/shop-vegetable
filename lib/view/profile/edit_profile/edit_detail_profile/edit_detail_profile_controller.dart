// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditDetailController extends GetxController {
  var checkInputEmail = TextEditingController();
  void onBack() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
