import 'package:get/get.dart';
import 'package:shopvegetable/view/login_with_password/login_with_password_controller.dart';

class LoginWithPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginWithPasswordController());
  }
}
