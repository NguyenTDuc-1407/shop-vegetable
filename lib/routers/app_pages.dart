import 'package:get/get.dart';
import 'package:shopvegetable/routers/router_child/choice_login_router.dart';
import 'package:shopvegetable/routers/router_child/first_router.dart';
import 'package:shopvegetable/routers/router_child/sqlash_router.dart';

class AppPages {
  static List<GetPage> list = [
    ...FirstRouter.list,
    ...SqlashRouter.list,
    ...ChoiceLoginrouter.list,
  ];
}
