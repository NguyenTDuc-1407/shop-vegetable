import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/profile/profile_controller.dart';

import '../../help/dimensions.dart';

class ProfilePage extends GetView {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProfileController(),
      builder: (ProfileController controller) => Scaffold(
        // none app bar
        appBar: appbar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  // ảnh nền
                  imageBackground(),
                  Container(
                    margin: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_5X),
                    child: Row(
                      children: [
                        // ảnh đại diện
                        imageAvata(),
                        // thông tin user
                        information(controller),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MyDimensions.SPACE_SIZE_5X,
              ),
              ...List.generate(
                controller.profile.length,
                // các nút chỉnh sửa
                (index) => listButton(controller, index),
              ),
              InkWell(
                onTap: () {
                  controller.onLogOut();
                },
                child: Container(
                  margin: EdgeInsets.only(top: MyDimensions.BORDER_RADIUS_4X),
                  color: Colors.white,
                  child: ListTile(
                    leading: Image.asset(
                      ImagePath.logout,
                      height: MyDimensions.SPACE_SIZE_5X * 1.5,
                      width: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    title: Text(
                      TextApp.dangXuat,
                      style: TextStyle(
                          fontSize: MyDimensions.FONT_SIZE_H5,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  InkWell listButton(ProfileController controller, int index) {
    return InkWell(
      onTap: () {
        controller.onNextPage(index);
      },
      child: Container(
        margin: EdgeInsets.only(top: MyDimensions.BORDER_RADIUS_4X),
        color: Colors.white,
        child: ListTile(
          leading: Image.asset(
            controller.profile[index]["icon"],
            height: MyDimensions.SPACE_SIZE_5X * 1.5,
            width: MyDimensions.SPACE_SIZE_5X * 1.5,
          ),
          title: Text(
            controller.profile[index]["title"],
            style: TextStyle(
                fontSize: MyDimensions.FONT_SIZE_H5,
                overflow: TextOverflow.ellipsis),
          ),
        ),
      ),
    );
  }

  Container information(ProfileController controller) {
    return Container(
      margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 2.5),
      height: MyDimensions.SPACE_SIZE_5X * 2.4,
      width: MyDimensions.SPACE_SIZE_5X * 13,
      child: ListTile(
        title: Text(
          controller.user[0]["name"],
          style: TextStyle(
              fontSize: MyDimensions.FONT_SIZE_H4, fontWeight: FontWeight.w700),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.user[0]["address"],
              style: const TextStyle(
                  fontWeight: FontWeight.w400, color: Colors.black),
            ),
            Text(
              controller.user[0]["follow"],
              style: const TextStyle(
                  color: Color(0xff4AA9BC), fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }

  Container imageAvata() {
    return Container(
      padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X * 0.5),
      height: MyDimensions.SPACE_SIZE_5X * 5.4,
      width: MyDimensions.SPACE_SIZE_5X * 5.4,
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X * 10),
          color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X * 10),
        child: Image.asset("assets/images/avatar.jpg"),
      ),
    );
  }

  Container imageBackground() {
    return Container(
      margin: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_5X * 2.8),
      height: MyDimensions.mySize.height * 0.2,
      width: MyDimensions.mySize.width,
      child: Image.asset(
        "assets/images/background-profile.jpg",
        fit: BoxFit.cover,
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      toolbarHeight: MyDimensions.SPACE_SIZE_2X,
      elevation: 0,
      backgroundColor: Colors.white,
    );
  }
}
