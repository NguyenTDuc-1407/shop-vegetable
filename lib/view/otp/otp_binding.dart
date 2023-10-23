import 'package:get/get.dart';
import 'package:shopvegetable/view/otp/otp_controller.dart';

class OtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OtpController());
  }
}
