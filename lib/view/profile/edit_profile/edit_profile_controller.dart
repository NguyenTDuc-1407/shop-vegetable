// ignore_for_file: unused_field, unnecessary_overrides

import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../routers/router_child/edit_profile_router.dart';

class EditProfileController extends GetxController {
  File? _selectedImage;
  var user = Get.arguments[0];
  void onBack() {
    Get.back();
  }

  void onEditDetailPage() {
    Get.toNamed(EditProflieRouter.detail_edit_profile);
  }

  Future pickImage() async {
    final retunrImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    _selectedImage = File(retunrImage!.path);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
