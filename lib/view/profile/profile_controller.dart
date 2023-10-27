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
  void onNextPage(int index) {
    Get.toNamed(profile[index]["page"]);
  }
}
