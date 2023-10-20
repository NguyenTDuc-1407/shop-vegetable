// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:shopvegetable/view/first/first_binding.dart';
import 'package:shopvegetable/view/first/first_page.dart';
import 'package:shopvegetable/view/sqlash/sqlash_binding.dart';
import 'package:shopvegetable/view/sqlash/sqlash_page.dart';

class FirstRouter {
  static const String Fisrt_Page = '/';
  static const String Sqlash_Page = '/sqlash';
  static List<GetPage> list = [
    GetPage(
      name: Fisrt_Page,
      page: () => const FirstPage(),
      binding: FirstBinding(),
    ),
    GetPage(
      name: Sqlash_Page,
      page: () => const SqlashPage(),
      binding: SqlashBinding(),
    ),
  ];
}
