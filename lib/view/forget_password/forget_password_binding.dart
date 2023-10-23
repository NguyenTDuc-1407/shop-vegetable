import 'package:get/get.dart';
import 'package:shopvegetable/view/forget_password/forget_password_controller.dart';

class ForgetPasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgetPasswordController());
  }
}
