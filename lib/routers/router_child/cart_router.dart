import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/bottom_bar/bottom_bar_binding.dart';
import '../../view/bottom_bar/bottom_bar_page.dart';
import '../../view/cart/cart_binding.dart';
import '../../view/cart/cart_page.dart';

class CartRouter {
  static const String cart = '/cart';
  static const String home = '/home';
  static List<GetPage> list = [
    GetPage(
      name: cart,
      page: () => const CartPage(),
      binding: CartBinding(),
    ),
    GetPage(
      name: home,
      page: () => const BottomBarPage(),
      binding: BottomBarBinding(),
    ),
  ];
}
