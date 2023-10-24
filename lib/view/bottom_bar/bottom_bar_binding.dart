import 'package:get/get.dart';

import '../home/home_controller.dart';
import 'bottom_bar_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomBarController());
    Get.lazyPut(() => HomeController());
    // Get.lazyPut<SearchListController>(() => SearchListController());
    // Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
