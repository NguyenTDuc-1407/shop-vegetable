// ignore_for_file: unnecessary_overrides

import 'dart:async';

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/first_router.dart';

class FirstController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.toNamed(FirstRouter.Sqlash_Page);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
