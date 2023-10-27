import 'package:get/get.dart';
import 'package:shopvegetable/view/detail_item/detail_item_controller.dart';

class DetailItemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailItemController());
  }
}
