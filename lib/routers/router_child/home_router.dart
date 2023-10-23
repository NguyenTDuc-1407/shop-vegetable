import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopvegetable/view/home/home_page.dart';

import '../../view/home/home_binding.dart';

class HomeRouter {
  static const String home = '/home';
  static List<GetPage> list = [
    GetPage(
      name: home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
