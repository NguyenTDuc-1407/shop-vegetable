import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/sqlash_router.dart';

class SqlashController extends GetxController {
  int currentIndex = 0;
  List sqLash = [
    {
      "image": "assets/images/sql_1.png",
      "title": "AAA",
      "context": "affsdfsdfdsfsssssssssssssssssssssssss\nasd",
      "buton": "Next",
    },
    {
      "image": "assets/images/sql_1.png",
      "title": "BBBsssssssssssssssssssss",
      "context": "affsdfsdfdsfsss",
      "buton": "Next",
    },
    {
      "image": "assets/images/sql_1.png",
      "title": "CCC",
      "context": "affsdfsdfdsf",
      "buton": "Get Started",
    },
  ];
  final PageController pageController = PageController();
  void onPageImage(int index) {
    currentIndex = index;
    update();
  }

  void onNext() async {
    if (currentIndex == sqLash.length - 1) {
      Get.toNamed(SqlashRouter.Choice_login_Page);
    } else {
      currentIndex = currentIndex + 1;
      await pageController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    }
  }
}
