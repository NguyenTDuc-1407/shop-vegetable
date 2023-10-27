import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_controller.dart';

class EditProfilePage extends GetView {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: EditProfileController(),
      builder: (EditProfileController controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chỉnh sửa thông tin cá nhân",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: MyDimensions.FONT_SIZE_H5,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.check,
                    color: Colors.grey,
                  ))
            ],
          ),
          leading: InkWell(
            onTap: () {
              controller.onBack();
            },
            child: Container(
              margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
              child: Image.asset(
                "assets/icons/back-ios.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
