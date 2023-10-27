import 'package:get/get.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_controller.dart';

class EditProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}
