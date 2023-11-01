import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/profile/change_password/change_password_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../help/dimensions.dart';

class ChangePasswordPage extends GetView {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ChangePasswordController(),
      builder: (ChangePasswordController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Đổi mật khẩu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MyDimensions.FONT_SIZE_H5,
                  ),
                ),
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
          body: Container(
            margin: EdgeInsets.only(
              top: MyDimensions.SPACE_SIZE_5X * 2,
            ),
            child: Column(
              children: [
                Obx(
                  () => Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                      bottom: MyDimensions.SPACE_SIZE_5X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputOldPassword,
                        onChanged: (value) => controller.actionIconPassword(),
                        obscureText: controller.inputOldPassword.value,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 74, 169, 188),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Nhập mật khẩu cũ",
                          icon: const Icon(Icons.lock),
                          suffixIcon: Visibility(
                            visible: controller.iconOldPassword,
                            child: IconButton(
                              onPressed: () {
                                controller.hideInputOldPassword();
                              },
                              icon: Icon(
                                controller.inputOldPassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                      bottom: MyDimensions.SPACE_SIZE_5X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputNewPassword,
                        onChanged: (value) => controller.actionIconPassword(),
                        obscureText: controller.inputNewPassword.value,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 74, 169, 188),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Nhập mất khẩu mới",
                          icon: const Icon(Icons.lock),
                          suffixIcon: Visibility(
                            visible: controller.iconNewPassword,
                            child: IconButton(
                              onPressed: () {
                                controller.hideInputNewPassword();
                              },
                              icon: Icon(
                                controller.inputNewPassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                      bottom: MyDimensions.SPACE_SIZE_5X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputConfiNewPassword,
                        onChanged: (value) => controller.actionIconPassword(),
                        obscureText: controller.inputNewConfiPassword.value,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 74, 169, 188),
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Xác nhận mật khẩu mới",
                          icon: const Icon(Icons.lock),
                          suffixIcon: Visibility(
                            visible: controller.iconNewConfiPassord,
                            child: IconButton(
                              onPressed: () {
                                controller.hideInputNewConfipass();
                              },
                              icon: Icon(
                                controller.inputNewConfiPassword.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    showTopSnackBar(
                      Overlay.of(context),
                      const CustomSnackBar.info(
                        message: "Đổi mật khẩu thành công",
                        backgroundColor: Colors.teal,
                      ),
                    );
                    controller.onAccessChangePassword();
                  },
                  child: Container(
                    height: MyDimensions.SPACE_SIZE_5X * 2,
                    width: MyDimensions.mySize.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
                      color: Colors.purple,
                    ),
                    child: Center(
                      child: Text(
                        "thay đổi",
                        style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_SPAN * 1.2,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
