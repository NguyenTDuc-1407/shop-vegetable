// ignore_for_file: prefer_is_empty, non_constant_identifier_names, unrelated_type_equality_checks

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';

class HomeController extends GetxController {
  var search = TextEditingController();
  int currentIndex = 0;
  bool checkCart = false;
  bool checkSale = true;
  final PageController pageController = PageController();
  final defaultDuration = const Duration(hours: 2, minutes: 30);
  String quantitySold = "";
  List quantitySoldList = [];
  List homebanner = [
    {
      "image": "assets/images/banner1.jpg",
    },
    {
      "image": "assets/images/banner2.jpg",
    },
    {
      "image": "assets/images/banner3.jpg",
    },
    {
      "image": "assets/images/banner4.jpg",
    },
  ];

  List homeItem2 = [
    {
      "image": "assets/images/item1.jpg",
      "title": "aaaaaaaaaaa",
      "price": "1234.000đ",
      "quantitySold": 25,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "bbbbbbbbbbbbb",
      "price": "5345.000đ",
      "quantitySold": 43,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "ccccccccccccccccsssssssssssssssssssssssssssssssssssss",
      "price": "64.000đ",
      "quantitySold": 14235,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "ddddddddddddd",
      "price": "65.000đ",
      "quantitySold": 45,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "eeeeeeeeeeeeeeeeeeeeee",
      "price": "74.000đ",
      "quantitySold": 625658,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "fffffffffffffff",
      "price": "63.000đ",
      "quantitySold": 140235,
    },
  ];

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

  void checkTimeSale() {
    checkSale = false;
    update();
  }

  void onNextDetailItem() {
    Get.toNamed(HomeRouter.detail_item);
  }

  void onNextPageCart() {
    Get.toNamed(HomeRouter.cart, arguments: [CartItem]);
  }

  void onPageImage(int index) {
    currentIndex = index;
    update();
  }
  // void checkQuantitySold(int index) {
  //   quantitySold = homeItem2[index]["quantitySold"].toString();
  //   if (homeItem2[index]["quantitySold"] >= 1000) {
  //     quantitySold = homeItem2[index]["quantitySold"].toString();
  //     for (var i = quantitySold.length - 3; i < quantitySold.length; i--) {
  //       quantitySold.replaceRange(i, quantitySold.length, "k");
  //       if (i == i) {
  //         break;
  //       }
  //     }
  //   }
  //   quantitySoldList.addAll([quantitySold]);
  //   update();
  // }

  // @override
  // void onInit() {
  //   super.onInit();
  // }
}
