// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/bottom_bar/bottom_bar_binding.dart';
import 'package:shopvegetable/view/bottom_bar/bottom_bar_page.dart';
import 'package:shopvegetable/view/cart/cart_binding.dart';
import 'package:shopvegetable/view/cart/cart_page.dart';
import 'package:shopvegetable/view/detail_item/detail_item_binding.dart';
import 'package:shopvegetable/view/detail_item/detail_item_page.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_binding.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_page.dart';
import 'package:shopvegetable/view/search_item/detail_type_item/detail_type_item_binding.dart';
import 'package:shopvegetable/view/search_item/detail_type_item/detail_type_item_page.dart';

class HomeRouter {
  static const String home = '/home';
  static const String cart = '/cart';
  static const String edit_profile = '/edit-profile';
  static const String detail_item = '/detail-item';
  static const String detail_type_item = '/detail-type-item';

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
    GetPage(
      name: edit_profile,
      page: () => const EditProfilePage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: detail_item,
      page: () => const DetailItemPage(),
      binding: DetailItemBinding(),
    ),
    GetPage(
      name: detail_type_item,
      page: () => const DetailTypeItemPage(),
      binding: DetailTypeItemBinding(),
    )
  ];
}
