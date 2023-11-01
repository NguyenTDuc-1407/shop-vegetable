// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/profile/change_password/change_password_binding.dart';
import 'package:shopvegetable/view/profile/change_password/change_password_page.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_detail_profile/edit_detail_profile_page.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_binding.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_page.dart';

import '../../view/bottom_bar/bottom_bar_binding.dart';
import '../../view/bottom_bar/bottom_bar_page.dart';

class EditProflieRouter {
  static const String edit_profile = '/edit-profile';
  static const String detail_edit_profile = '/edit-detail-profile';
  static const String change_password = '/change-password';
  static const String home = '/home';

  static List<GetPage> list = [
    GetPage(
      name: edit_profile,
      page: () => const EditProfilePage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: detail_edit_profile,
      page: () => const EditDetailPage(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: change_password,
      page: () => const ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: home,
      page: () => const BottomBarPage(),
      binding: BottomBarBinding(),
    ),
  ];
}
