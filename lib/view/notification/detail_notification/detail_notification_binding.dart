import 'package:get/get.dart';
import 'package:shopvegetable/view/notification/detail_notification/detail_notification_controller.dart';

class DetailNotificationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailNotificationController());
  }
}
