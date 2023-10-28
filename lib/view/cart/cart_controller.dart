// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

class CartController extends GetxController {
  bool checkBox = false;
  int item = 0;
  List cartItem = Get.arguments[0];
  int countCheck = 0;

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
    if (checkBox == true) {
      item = cartItem.length;
    } else {
      item = 0;
    }
    update();
  }

  void onCheckBoxId(int index) {
    cartItem[index]["checkbox"] = !cartItem[index]["checkbox"];

    if (cartItem[index]["checkbox"] == true) {
      countCheck = countCheck + 1;
      if (countCheck == cartItem.length) {
        checkBox = true;
      }
    }

    if (cartItem[index]["checkbox"] == false) {
      checkBox = false;
    }
    if (cartItem[index]["checkbox"] == true) {
      item = item + 1;
    } else {
      item = item - 1;
    }

    update();
  }

  void onBack() {
    Get.back();
  }
}
