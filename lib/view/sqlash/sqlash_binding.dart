import 'package:get/get.dart';
import 'package:shopvegetable/view/sqlash/sqlash_controller.dart';

class SqlashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SqlashController());
  }
}
