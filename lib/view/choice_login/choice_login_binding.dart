import 'package:get/get.dart';
import 'package:shopvegetable/view/choice_login/choice_login_controller.dart';

class ChoiceLoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoiceLoginController());
  }
}
