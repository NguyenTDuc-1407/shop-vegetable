// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/sqlash_router.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';

class SqlashController extends GetxController {
  int currentIndex = 0;
  List sqLash = [
    {
      "image": ImagePath.sqlash,
      "title": TextApp.titleSqlash,
      "context": TextApp.contextSqlash,
      "buton": TextApp.buttonSqlash,
    },
    {
      "image": ImagePath.sqlash,
      "title": TextApp.titleSqlash1,
      "context": TextApp.contextSqlash1,
      "buton": TextApp.buttonSqlash,
    },
    {
      "image": ImagePath.sqlash,
      "title": TextApp.titleSqlash2,
      "context": TextApp.contextSqlash2,
      "buton": TextApp.buttonStartSqlash,
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

  @override
  void onClose() {
    super.onClose();
  }
}
