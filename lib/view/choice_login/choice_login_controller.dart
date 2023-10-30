// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/choice_login_router.dart';

class ChoiceLoginController extends GetxController {
  void onSignUpPage() {
    Get.toNamed(ChoiceLoginrouter.sign_up);
  }

  void onLoginPage() {
    Get.toNamed(ChoiceLoginrouter.Login_with_password);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
