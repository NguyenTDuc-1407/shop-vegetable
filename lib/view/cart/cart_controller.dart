// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unnecessary_null_comparison

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

import '../../provider/item_provider.dart';
import '../../routers/router_child/payment.dart';

class CartController extends GetxController {
  var inputQuatity = TextEditingController();
  bool checkBox = false;
  int item = 0;
  var InputQuatity = TextEditingController();
  List cartItem = Get.arguments[0];
  List payItem = [];
  ItemProvider itemProvider = GetIt.I.get<ItemProvider>();
  bool data = false;

  @override
  void onInit() {
    super.onInit();
    // checkData();
    // quatity();
  }

  // void checkData() {
  //   print(cartItem.runtimeType);
  //   if (cartItem.runtimeType == [].runtimeType) {
  //     data = true;
  //     print(data);
  //   } else {
  //     data = false;
  //     print(data);
  //   }
  //   update();
  // }

  // void quatity() {
  //   for (var i in cartItem) {
  //     inputQuatity.text = i["quatity"].toString();
  //     print(inputQuatity.text);
  //   }
  //   update();
  // }

  void onCheckBox() {
    checkBox = !checkBox;
    for (var i in cartItem) {
      i["checkbox"] = !i["checkbox"];
      if (checkBox == true) {
        i["checkbox"] = true;
        item = cartItem.length;
        itemProvider.Item = cartItem;
      } else {
        i["checkbox"] = false;
        item = 0;
        itemProvider.Item = [];
      }
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
      payItem.add(cartItem[index]);
      itemProvider.Item = payItem;
      if (item == cartItem.length) {
        checkBox = true;
        itemProvider.Item = cartItem;
      }
    } else {
      item = item - 1;
      payItem.remove(cartItem[index]);
      itemProvider.Item = payItem;
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
