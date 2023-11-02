import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_detail_profile/edit_detail_profile_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../help/dimensions.dart';

class EditDetailPage extends GetView {
  const EditDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: EditDetailController(),
      builder: (EditDetailController controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sửa hồ sơ chi tiết",
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: MyDimensions.mySize.height * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Tên",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "address",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "gender",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "follow",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.checkInputEmail,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "phoneNumber",
                          icon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                showTopSnackBar(
                  Overlay.of(context),
                  const CustomSnackBar.info(
                    message: "Thông tin đã được thay đổi",
                    backgroundColor: Colors.teal,
                  ),
                );
                controller.onBack();
              },
              child: Container(
                height: MyDimensions.SPACE_SIZE_5X * 2.7,
                width: MyDimensions.mySize.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
                  color: Colors.purple,
                ),
                child: Center(
                  child: Text(
                    "Lưu",
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
    );
  }
}
