// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

import '../../../routers/router_child/home_router.dart';

class DetailTypeItemConotroller extends GetxController {
  String quantitySold = "";
  List quantitySoldList = [];
  String title = Get.arguments[1];
  var homeItem2 = Get.arguments[0];
  List CartItem = [
    {
      "image": "assets/images/item1.jpg",
      "title": "asdasdsadsssssssssssssssssssssssssssssssssssssssssssssssssss",
      "price": "124.000đ",
      "quatity": 1,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "vvvvvv",
      "price": "45.000đ",
      "quatity": 1,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "xxxxxxx",
      "price": "363.000đ",
      "quatity": 1,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "xxxxxxx",
      "price": "363.000đ",
      "quatity": 1,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "xxxxxxx",
      "price": "363.000đ",
      "quatity": 1,
      "checkbox": false,
    },
  ];
  @override
  void onInit() {
    checkQuantitySold();
    super.onInit();
  }

  void checkQuantitySold() {
    for (var i in homeItem2) {
      quantitySold = i["quantitySold"].toString();
      if (i["quantitySold"] >= 1000) {
        quantitySold = i["quantitySold"].toString();
        quantitySold = quantitySold.replaceRange(
            quantitySold.length - 3, quantitySold.length, "k");
      }
      quantitySoldList.addAll([quantitySold]);
    }
    update();
  }

  void onNextDetailItem(int index) {
    Get.toNamed(HomeRouter.detail_item,
        arguments: [homeItem2[index], CartItem, homeItem2]);
  }

  void onBack() {
    Get.back();
  }
}
