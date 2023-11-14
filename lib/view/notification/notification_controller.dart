// ignore_for_file: unnecessary_overrides, non_constant_identifier_names

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';

class NotificationController extends GetxController {
  List notification = [
    {
      "leading": "assets/icons/shoppe.png",
      "title":
          "asdsdsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
      "context":
          "asfsdgdfhdhfghfghssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "dfggjfgjg",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "fgjdfhdfh",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "fdjshthfgnjfghjfthdfhdh",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "rtshfgjygiyjfg",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "rtshfgjygiyjfg",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "rtshfgjygiyjfg",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "rtshfgjygiyjfg",
      "status": false,
    },
    {
      "leading": "assets/icons/shoppe.png",
      "title": "asdsd",
      "context": "rtshfgjygiyjfg",
      "status": true,
    },
  ];
  Future Refresh() async {
    notification = [];
    update();
  }

  void onDetailNotification(int index) {
    Get.toNamed(HomeRouter.detail_notification,
        arguments: [notification[index]]);
    notification[index]["status"] = true;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
