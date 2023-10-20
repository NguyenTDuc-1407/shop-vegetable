import 'package:get/get.dart';
import 'package:shopvegetable/view/first/first_controller.dart';

class FirstBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstController());
  }
}
