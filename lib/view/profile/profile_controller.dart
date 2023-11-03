// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/edit_profile_router.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';

class ProfileController extends GetxController {
  List profile = [
    {
      "icon": ImagePath.edit,
      "title": TextApp.chinhSuaThongTinCaNhan,
      "page": HomeRouter.edit_profile,
    },
    {
      "icon": ImagePath.changePassword,
      "title": TextApp.doiMatKhau,
      "page": EditProflieRouter.change_password,
    },
  ];
  List user = [
    {
      "name": "Aanya Sharma",
      "Email": "123@gmail.com",
      "address": "Banglore, India",
      "gender": "nam",
      "follow": "150 traveallies",
      "phoneNumber": 0215615283,
    }
  ];
  void onNextPage(int index) {
    Get.toNamed(profile[index]["page"], arguments: [user]);
  }

  void onLogOut() {
    Get.toNamed(EditProflieRouter.Login_with_password);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
