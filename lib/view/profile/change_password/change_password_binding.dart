import 'package:get/get.dart';
import 'package:shopvegetable/view/profile/change_password/change_password_controller.dart';

class ChangePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChangePasswordController());
  }
}
