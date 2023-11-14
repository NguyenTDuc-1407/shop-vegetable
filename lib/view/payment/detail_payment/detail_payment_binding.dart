import 'package:get/get.dart';
import 'package:shopvegetable/view/payment/detail_payment/detail_payment_controller.dart';

class DetailPayemntBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailPaymentController());
  }
}
