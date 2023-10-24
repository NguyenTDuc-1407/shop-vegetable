import 'package:get/get.dart';

import '../home/home_page.dart';

class BottomBarController extends GetxController {
  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;
  double sizeIcon = 24.0;

  final List<Map<String, dynamic>> pages = [
    {
      'label': "",
      'icon': "assets/icons/home.png",
      'page': const HomePage(),
    },
    // {
    //   'label': "",
    //   'icon': ImagesPath.search_bottom,
    //   'page': SearchListPage(),
    // },
    // {
    //   'label': "",
    //   'icon': ImagesPath.user_bottom,
    //   'page': ProfilePage(),
    // },
  ];

  ///
  /// Change page
  ///
  void onChangedPage(int index) {
    currentIndex.value = index;
    update();
  }

  @override
  void onClose() {
    currentIndex.close();
    super.onClose();
  }
}
