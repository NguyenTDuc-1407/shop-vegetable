// ignore_for_file: prefer_is_empty, non_constant_identifier_names, unnecessary_overrides
import 'package:add_to_cart_animation/add_to_cart_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shopvegetable/provider/item_provider.dart';
import 'package:shopvegetable/routers/router_child/payment.dart';

import '../../routers/router_child/home_router.dart';

class DetailItemController extends GetxController {
  var inputQuatity = TextEditingController();
  bool checkCart = false;
  bool hideText = false;
  var detailItem = Get.arguments[0];
  List CartItem = Get.arguments[1];
  var homeItem = Get.arguments[2];
  ItemProvider itemProvider = GetIt.I.get<ItemProvider>();
  GlobalKey<CartIconKey> cartKey = GlobalKey<CartIconKey>();
  late Function(GlobalKey) runAddToCartAnimation;

  @override
  void onInit() {
    super.onInit();
    detailItem;
    checkCartItem();
    addItem();
  }

  // void onAddCart() {
  //   // await runAddToCartAnimation(widgetKey);
  //   // print(await runAddToCartAnimation(widgetKey));
  //   CartItem.add(detailItem);
  // }

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

  void addItem() {
    itemProvider.Item = detailItem;
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
