import 'package:get/get.dart';
import 'package:shopvegetable/view/search_item/detail_type_item/detail_type_item_controller.dart';

class DetailTypeItemBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTypeItemConotroller());
  }
}
