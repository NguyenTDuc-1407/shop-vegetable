// ignore_for_file: constant_identifier_names

import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/forget_password/forget_password_binding.dart';
import 'package:shopvegetable/view/forget_password/forget_password_page.dart';
import 'package:shopvegetable/view/sign_up/sign_up_binding.dart';
import 'package:shopvegetable/view/sign_up/sign_up_page.dart';

import '../../view/choice_login/choice_login_binding.dart';
import '../../view/choice_login/choice_login_page.dart';
import '../../view/login_with_password/login_with_password_binding.dart';
import '../../view/login_with_password/login_with_password_page.dart';

class LoginWithPasswordRouter {
  static const String Login_with_password = '/Login-with-password';
  static const String sign_up = '/Sign-up';
  static const String Choice_login_Page = '/choice-login';
  static const String Forget_Password = '/forget-password';
  static List<GetPage> list = [
    GetPage(
      name: Login_with_password,
      page: () => const LoginWithPasswordPage(),
      binding: LoginWithPasswordBinding(),
    ),
    GetPage(
      name: sign_up,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Choice_login_Page,
      page: () => const ChoiceLoginPage(),
      binding: ChoiceLoginBinding(),
    ),
    GetPage(
      name: Forget_Password,
      page: () => const ForgetPasswordPage(),
      binding: ForgetPasswordBinding(),
    ),
  ];
}
