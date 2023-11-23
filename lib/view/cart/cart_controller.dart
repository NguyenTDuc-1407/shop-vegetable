// ignore_for_file: non_constant_identifier_names, unnecessary_overrides, unnecessary_null_comparison, prefer_is_empty

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
  bool hideCart = false;
  bool showdCart = false;
  List typeItem = [];
  var items = "";

  @override
  void onInit() {
    super.onInit();
    checkData();
    // onTypeItem();
  }

  void checkData() {
    if (cartItem.length == 0) {
      hideCart = true;
    } else {
      showdCart = true;
    }
    update();
  }

  // void quatity() {}
  // void onTypeItem() {
  //   var c = 0;
  //   for (var i in cartItem) {
  //     typeItem.addAll({
  //       i["type"],
  //       [i]
  //     });
  //     for (var j in typeItem) {
  //       if (i["type"] == j) {
  //         c++;
  //         print(c);
  //         // if (c == 1) {
  //         //   print(typeItem);
  //         // }
  //       }
  //     }
  //   }
  //   print(typeItem);
  //   update();
  // }

  void onCheckBox() {
    checkBox = !checkBox;
    for (var i in cartItem) {
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

  void onRemoveItemCart(int index) {
    cartItem.removeAt(index);
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
    for (var i in cartItem) {
      i["checkbox"] = false;
    }
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
