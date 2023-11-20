// ignore_for_file: prefer_is_empty, non_constant_identifier_names, unrelated_type_equality_checks, unnecessary_overrides

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

  List homeItem = [
    {
      "image": "assets/images/item1.jpg",
      "title":
          "aaaaaaaaaaasssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
      "price": "1234.000đ",
      "context":
          "asdsadfsagregdagagdhhdfhhhhhhhgsgregsdgsdgsdgrgdfgrehdfhdhtrhdrfhthrhdagareghthjghrharhsthfg5htjdrhtggehfharhthghnhthtasdsssssssssssssssssssssssssssaaaaaaaaaaaaaaaaaaaaaaaaaaaddddddddawwwwwwwwwwwwwwwwwwwwwwwwdssssssssssssjrh",
      "like": false,
      "quantitySold": 25,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "bbbbbbbbbbbbb",
      "price": "5345.000đ",
      "context": "",
      "like": false,
      "quantitySold": 43,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "ccccccccccccccccsssssssssssssssssssssssssssssssssssss",
      "price": "64.000đ",
      "context": "",
      "like": false,
      "quantitySold": 14235,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "ddddddddddddd",
      "price": "65.000đ",
      "context": "",
      "like": false,
      "quantitySold": 45,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "eeeeeeeeeeeeeeeeeeeeee",
      "price": "74.000đ",
      "context": "",
      "like": false,
      "quantitySold": 625658,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "fffffffffffffff",
      "price": "63.000đ",
      "context": "",
      "like": false,
      "quantitySold": 140235,
    },
  ];

  List CartItem = [
    {
      "image": "assets/images/item1.jpg",
      "title": "asdasdsadsssssssssssssssssssssssssssssssssssssssssssssssssss",
      "price": "124.000đ",
      "quatity": 6,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "vvvvvv",
      "price": "45.000đ",
      "quatity": 2,
      "checkbox": false,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "xxxxxxx",
      "price": "363.000đ",
      "quatity": 4,
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
    checkQuantitySold();
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

  void onNextDetailItem(int index) {
    Get.toNamed(HomeRouter.detail_item,
        arguments: [homeItem[index], CartItem, homeItem]);
  }

  void onNextPageCart() {
    Get.toNamed(HomeRouter.cart, arguments: [CartItem]);
  }

  void onPageImage(int index) {
    currentIndex = index;
    update();
  }

  void checkQuantitySold() {
    for (var i in homeItem) {
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

  Future Refresh() async {
    homeItem = [];
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
