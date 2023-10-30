// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';

class ProfileController extends GetxController {
  List profile = [
    {
      "icon": "assets/icons/edit.png",
      "title": "chỉnh sửa thông tin cá nhân",
      "page": HomeRouter.edit_profile,
    },
    {
      "icon": "assets/icons/change-password.png",
      "title": "đổi mật khẩu",
      "page": "",
    },
    {
      "icon": "assets/icons/logout.png",
      "title": "Đăng suất",
      "page": "",
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

  @override
  void onClose() {
    super.onClose();
  }
}
