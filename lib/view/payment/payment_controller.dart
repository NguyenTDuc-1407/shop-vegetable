// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/payment.dart';

class PaymentController extends GetxController {
  List payment = ["Tiền mặt", "Momo", "Vnpay"];
  List paymentLink = ["Momo", "Vnpay", "Tài khoảng ngân hàng", "ApplePay"];
  String paymentChoice = "Tiền mặt";
  void choicePayment(int index) {
    paymentChoice = payment[index];
    update();
  }

  void onBack() {
    Get.back();
  }

  void onDetailPaymentPage() {
    Get.toNamed(PaymentRouter.detail_payment, arguments: [paymentChoice]);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
