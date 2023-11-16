// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:shopvegetable/view/cart/cart_binding.dart';
import 'package:shopvegetable/view/cart/cart_page.dart';
import 'package:shopvegetable/view/payment/detail_payment/detail_payment_binding.dart';
import 'package:shopvegetable/view/payment/detail_payment/detail_payment_page.dart';
import 'package:shopvegetable/view/payment/payment_binding.dart';
import 'package:shopvegetable/view/payment/payment_page.dart';
import '../../view/detail_item/detail_item_binding.dart';
import '../../view/detail_item/detail_item_page.dart';

class PaymentRouter {
  static const String detail_item = '/detail-item';
  static const String choice_payment = '/choice-payment';
  static const String detail_payment = '/detail-payment';
  static const String cart = '/cart';
  static List<GetPage> list = [
    GetPage(
      name: detail_item,
      page: () => const DetailItemPage(),
      binding: DetailItemBinding(),
    ),
    GetPage(
      name: cart,
      page: () => const CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: choice_payment,
      page: () => const PaymentPage(),
      binding: PayemntBinding(),
    ),
    GetPage(
      name: detail_payment,
      page: () => const DetailPaymentPage(),
      binding: DetailPayemntBinding(),
    ),
  ];
}
