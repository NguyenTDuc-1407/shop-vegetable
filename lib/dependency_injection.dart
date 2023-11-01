import 'package:get/get.dart';
import 'package:shopvegetable/help/checkConnect.dart';

class DependencyInjection {
  static void init() {
    Get.put<CheckConnect>(CheckConnect(), permanent: true);
  }
}
