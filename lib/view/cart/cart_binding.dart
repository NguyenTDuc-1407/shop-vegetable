import 'package:get/get.dart';
import 'package:shopvegetable/view/cart/cart_controller.dart';

class CartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CartController());
  }
}
