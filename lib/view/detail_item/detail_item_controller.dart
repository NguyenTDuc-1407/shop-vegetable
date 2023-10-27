// ignore_for_file: prefer_is_empty, non_constant_identifier_names

import 'package:get/get.dart';

import '../../routers/router_child/home_router.dart';

class DetailItemController extends GetxController {
  bool checkCart = false;
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
    super.onInit();
    checkCartItem();
  }

  void checkCartItem() {
    if (CartItem.length != 0) {
      checkCart = true;
    }
    update();
  }

  void onNextPageCart() {
    Get.toNamed(HomeRouter.cart, arguments: [CartItem]);
  }
}
