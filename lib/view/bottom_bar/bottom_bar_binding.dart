import 'package:get/get.dart';
import 'package:shopvegetable/view/search_item/search_item_controller.dart';

import '../home/home_controller.dart';
import 'bottom_bar_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => SreachItemController());
    // Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
