// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/otp/otp_binding.dart';
import 'package:shopvegetable/view/otp/otp_page.dart';

import '../../view/forget_password/forget_password_binding.dart';
import '../../view/forget_password/forget_password_page.dart';

class ForgetPasswordRouter {
  static const String Forget_Password = '/forget-password';
  static const String otp = '/otp';
  static List<GetPage> list = [
    GetPage(
      name: Forget_Password,
      page: () => const ForgetPasswordPage(),
      binding: ForgetPasswordBinding(),
    ),
    GetPage(
      name: otp,
      page: () => const OtpPage(),
      binding: OtpBinding(),
    ),
  ];
}
