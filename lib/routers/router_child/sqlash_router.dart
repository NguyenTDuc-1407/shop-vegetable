// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:shopvegetable/view/choice_login/choice_login_binding.dart';
import 'package:shopvegetable/view/choice_login/choice_login_page.dart';

import '../../view/sqlash/sqlash_binding.dart';
import '../../view/sqlash/sqlash_page.dart';

class SqlashRouter {
  static const String Sqlash_Page = '/sqlash';
  static const String Choice_login_Page = '/choice-login';
  static List<GetPage> list = [
    GetPage(
      name: Sqlash_Page,
      page: () => const SqlashPage(),
      binding: SqlashBinding(),
    ),
    GetPage(
      name: Choice_login_Page,
      page: () => const ChoiceLoginPage(),
      binding: ChoiceLoginBinding(),
    ),
  ];
}
