import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/cart_router.dart';
import 'package:shopvegetable/routers/router_child/choice_login_router.dart';
import 'package:shopvegetable/routers/router_child/first_router.dart';
import 'package:shopvegetable/routers/router_child/forget_password_router.dart';
import 'package:shopvegetable/routers/router_child/home_router.dart';
import 'package:shopvegetable/routers/router_child/login_with_password_router.dart';
import 'package:shopvegetable/routers/router_child/otp_router.dart';
import 'package:shopvegetable/routers/router_child/sign_up_router.dart';
import 'package:shopvegetable/routers/router_child/sqlash_router.dart';

class AppPages {
  static List<GetPage> list = [
    ...FirstRouter.list,
    ...SqlashRouter.list,
    ...ChoiceLoginrouter.list,
    ...LoginWithPasswordRouter.list,
    ...SignUpRouter.list,
    ...ForgetPasswordRouter.list,
    ...OtpRouter.list,
    ...HomeRouter.list,
    ...CartRouter.list,
  ];
}
