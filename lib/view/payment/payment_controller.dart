// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/payment.dart';
import 'package:shopvegetable/utils/image_path.dart';

class PaymentController extends GetxController {
  List payment = [
    {"icon": ImagePath.cash, "pay": "Tiền mặt"},
    {"icon": ImagePath.momo, "pay": "Momo"},
    {"icon": ImagePath.credit, "pay": "Thẻ ngân hàng"},
  ];
  List paymentLink = ["Vnpay", "Tài khoảng ngân hàng", "ApplePay"];
  String paymentChoice = "Tiền mặt";
  void choicePayment(int index) {
    paymentChoice = payment[index]["pay"];
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
