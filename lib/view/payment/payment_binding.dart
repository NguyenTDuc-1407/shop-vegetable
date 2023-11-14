import 'package:get/get.dart';
import 'package:shopvegetable/view/payment/payment_controller.dart';

class PayemntBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentController());
  }
}
