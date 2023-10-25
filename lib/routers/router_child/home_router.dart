import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/bottom_bar/bottom_bar_binding.dart';
import 'package:shopvegetable/view/bottom_bar/bottom_bar_page.dart';
import 'package:shopvegetable/view/cart/cart_binding.dart';
import 'package:shopvegetable/view/cart/cart_page.dart';

class HomeRouter {
  static const String home = '/home';
  static const String cart = '/cart';
  static List<GetPage> list = [
    GetPage(
      name: home,
      page: () => const BottomBarPage(),
      binding: BottomBarBinding(),
    ),
    GetPage(
      name: cart,
      page: () => const CartPage(),
      binding: CartBinding(),
    ),
  ];
}
