import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/choice_login_router.dart';

class ChoiceLoginController extends GetxController {
  void onLoginPage() {
    Get.toNamed(ChoiceLoginrouter.Login_with_password);
  }

  void onBackPage() {
    Get.back();
  }
}
