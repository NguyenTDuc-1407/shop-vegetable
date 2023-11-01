// ignore_for_file: unnecessary_overrides

import 'dart:ui';

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';

class SreachItemController extends GetxController {
  List homeItem = [
    {
      "image": "assets/images/home1.png",
      "title": "aaaaaaaaaaa",
      "color": const Color(0xff53B175),
    },
    {
      "image": "assets/images/home2.png",
      "title": "bbbbbbbbbbbbb",
      "color": const Color(0xffF8A44C),
    },
    {
      "image": "assets/images/home3.png",
      "title": "ccccccccccccccccsssssssssssssssssssssssssssssssssssss",
      "color": const Color(0xffF7A593),
    },
    {
      "image": "assets/images/home4.png",
      "title": "ddddddddddddd",
      "color": const Color(0xffD3B0E0),
    },
    {
      "image": "assets/images/home5.png",
      "title": "eeeeeeeeeeeeeeeeeeeeee",
      "color": const Color(0xffFDE598),
    },
    {
      "image": "assets/images/home6.png",
      "title": "fffffffffffffff",
      "color": const Color(0xffB7DFF5),
    },
  ];
  List homeItem2 = [
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
    {
      "image": "assets/images/item1.jpg",
      "title": "fffffffffffffff",
      "price": "63.000đ",
      "context": "",
      "like": false,
      "quantitySold": 140235,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "fffffffffffffff",
      "price": "63.000đ",
      "context": "",
      "like": false,
      "quantitySold": 140235,
    },
    {
      "image": "assets/images/item1.jpg",
      "title": "fffffffffffffff",
      "price": "63.000đ",
      "context": "",
      "like": false,
      "quantitySold": 140235,
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

  void onDeitailTpeItem(int index) {
    Get.toNamed(
      HomeRouter.detail_type_item,
      arguments: [
        homeItem2,
        homeItem[index]["title"],
      ],
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
