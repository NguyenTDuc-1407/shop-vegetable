// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class CartController extends GetxController {
  bool checkBox = false;
  List cartItem = Get.arguments[0];

  void onCheckBox() {
    checkBox = !checkBox;
    for (var i in cartItem) {
      i["checkbox"] = !i["checkbox"];
      if (checkBox == true) {
        i["checkbox"] = true;
      } else {
        i["checkbox"] = false;
      }
    }
    update();
  }

  void onCheckBoxId(int index) {
    cartItem[index]["checkbox"] = !cartItem[index]["checkbox"];
    update();
  }

  void onBack() {
    Get.back();
  }
}
