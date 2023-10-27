import 'package:get/get.dart';
import 'package:shopvegetable/view/notification/notification_page.dart';
import 'package:shopvegetable/view/profile/profile_page.dart';
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
      "checkNotifile": false,
    },
    {
      'label': "List item",
      'icon': "assets/icons/search.png",
      'page': const SearchItemPage(),
      "checkNotifile": false,
    },
    {
      'label': "Thông báo",
      'icon': "assets/icons/notification.png",
      'page': const NotificationPage(),
      "checkNotifile": true,
    },
    {
      'label': "Tôi",
      'icon': "assets/icons/user.png",
      'page': const ProfilePage(),
      "checkNotifile": false,
    },
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
