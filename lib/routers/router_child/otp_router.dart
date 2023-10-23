// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../view/login_with_password/login_with_password_binding.dart';
import '../../view/login_with_password/login_with_password_page.dart';
import '../../view/otp/otp_binding.dart';
import '../../view/otp/otp_page.dart';

class OtpRouter {
  static const String otp = '/otp';
  static const String Login_with_password = '/Login-with-password';

  static List<GetPage> list = [
    GetPage(
      name: otp,
      page: () => const OtpPage(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: Login_with_password,
      page: () => const LoginWithPasswordPage(),
      binding: LoginWithPasswordBinding(),
    ),
  ];
}
