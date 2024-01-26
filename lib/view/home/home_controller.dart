// ignore_for_file: prefer_is_empty, non_constant_identifier_names, unrelated_type_equality_checks, unnecessary_overrides, unused_field, prefer_final_fields, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:shopvegetable/provider/user_provider.dart';
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
  final UserProvider _userProvider = GetIt.I.get<UserProvider>();
  List Item = Get.arguments[0];
  List homeItem = Get.arguments[1];
  final scrollController = ScrollController();

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
    scrollController.addListener(() {
      if (scrollController.position.maxScrollExtent ==
          scrollController.offset) {
        fetch();
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future fetch() async {
    homeItem;
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

  void getAllUser() {
    _userProvider.AllUser(
      onSuccess: (posts) {
        for (var i in posts) {
          Item.addAll([
            {
              "image": "assets/images/item1.jpg",
              "title": i.id,
              // "context": i.body
            }
          ]);
          homeItem.addAll([
            {
              "image": "assets/images/item1.jpg",
              "title": i.id,
              // "context": i.body,
              "price": "1234.000đ",
              "like": false,
              "quantitySold": 25,
            }
          ]);

          update();
        }
      },
      onError: (error) {
        print(error);
      },
    );
  }

  Future Refresh() async {
    getAllUser();
    homeItem;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
