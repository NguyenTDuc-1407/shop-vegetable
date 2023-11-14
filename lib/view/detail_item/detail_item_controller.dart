// ignore_for_file: prefer_is_empty, non_constant_identifier_names, unnecessary_overrides

import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopvegetable/routers/router_child/payment.dart';

import '../../routers/router_child/home_router.dart';

class DetailItemController extends GetxController {
  bool checkCart = false;
  bool hideText = false;
  var detailItem = Get.arguments[0];
  var CartItem = Get.arguments[1];
  var homeItem = Get.arguments[2];

  @override
  void onInit() {
    super.onInit();
    detailItem;
    checkCartItem();
  }

  void checkCartItem() {
    if (CartItem.length != 0) {
      checkCart = true;
    }
    update();
  }

  void showAndHideText() {
    hideText = !hideText;
    update();
  }

  void actionButtonLike() {
    detailItem["like"] = !detailItem["like"];
    update();
  }

  void share() async {
    await Share.share("asdasd");
    update();
  }

  void onBack() {
    Get.back();
  }

  void onNextPageCart() {
    Get.toNamed(HomeRouter.cart, arguments: [CartItem]);
  }

  void onNextPagePayment() {
    Get.toNamed(PaymentRouter.choice_payment);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
