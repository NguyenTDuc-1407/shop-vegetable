// ignore_for_file: non_constant_identifier_names, unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../provider/item_provider.dart';
import '../../routers/router_child/payment.dart';

class CartController extends GetxController {
  bool checkBox = false;
  int item = 0;
  var InputQuatity = TextEditingController();
  List cartItem = Get.arguments[0];
  ItemProvider itemProvider = GetIt.I.get<ItemProvider>();

  @override
  void onInit() {
    addItem();
    super.onInit();
  }

  void addItem() {
    itemProvider.Item = cartItem;
    update();
  }

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
    if (cartItem[index]["checkbox"] == false) {
      checkBox = false;
    }
    if (cartItem[index]["checkbox"] == true) {
      item = item + 1;
      if (item == cartItem.length) {
        checkBox = true;
      }
    } else {
      item = item - 1;
    }

    update();
  }

  void onBack() {
    Get.back();
  }

  void onNextPagePayment() {
    Get.toNamed(PaymentRouter.choice_payment);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
