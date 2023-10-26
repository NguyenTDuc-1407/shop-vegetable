import 'package:get/get.dart';
import 'package:shopvegetable/view/search_item/search_item_page.dart';

import '../home/home_page.dart';

class BottomBarController extends GetxController {
  DateTime? currentBackPressTime;
  RxInt currentIndex = 0.obs;
  double sizeIcon = 24.0;

  final List<Map<String, dynamic>> pages = [
    {
      'label': "home",
      'icon': "assets/icons/home.png",
      'page': const HomePage(),
    },
    {
      'label': "Item",
      'icon': "assets/icons/search.png",
      'page': const SearchItemPage(),
    },
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
