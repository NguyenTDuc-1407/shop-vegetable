import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/profile/edit_profile/edit_profile_controller.dart';

class EditProfilePage extends GetView {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: EditProfileController(),
      builder: (EditProfileController controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                TextApp.suaHoSo,
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
                ImagePath.back,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: MyDimensions.SPACE_SIZE_3X,
                    ),
                    padding: EdgeInsets.only(
                      left: MyDimensions.SPACE_SIZE_3X,
                      right: MyDimensions.SPACE_SIZE_3X,
                      top: MyDimensions.SPACE_SIZE_2X,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         TextApp.hinhNen,
                          style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                        ),
                        InkWell(
                          onTap: () {
                            controller.pickImage();
                          },
                          child: Text(
                            TextApp.chinhSua,
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MyDimensions.mySize.height * 0.2,
                    width: MyDimensions.mySize.width,
                    child: Image.asset(
                      "assets/images/background-profile.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: MyDimensions.SPACE_SIZE_3X,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: MyDimensions.SPACE_SIZE_3X,
                  vertical: MyDimensions.SPACE_SIZE_2X,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          TextApp.anhDaiDien,
                          style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                        ),
                        InkWell(
                          onTap: () {
                            controller.pickImage();
                          },
                          child: Text(
                            TextApp.chinhSua,
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      child: Container(
                        padding:
                            EdgeInsets.all(MyDimensions.SPACE_SIZE_1X * 0.5),
                        height: MyDimensions.SPACE_SIZE_5X * 5.4,
                        width: MyDimensions.SPACE_SIZE_5X * 5.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                MyDimensions.BORDER_RADIUS_7X * 10),
                            color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              MyDimensions.BORDER_RADIUS_7X * 10),
                          child: Image.asset("assets/images/avatar.jpg"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MyDimensions.mySize.height * 0.6,
                margin: EdgeInsets.only(
                  top: MyDimensions.SPACE_SIZE_3X,
                  bottom: MyDimensions.SPACE_SIZE_5X,
                ),
                padding: EdgeInsets.only(
                  top: MyDimensions.SPACE_SIZE_3X,
                  left: MyDimensions.SPACE_SIZE_3X,
                  right: MyDimensions.SPACE_SIZE_3X,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         TextApp.thongTinCaNhan,
                          style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                        ),
                        InkWell(
                          onTap: () {
                            controller.onEditDetailPage();
                          },
                          child: Text(
                            TextApp.chinhSua,
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                                color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Tên: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["name"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "Email: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["Email"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "address: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["address"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "gender: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["gender"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "follow: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["follow"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "phoneNumber: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: MyDimensions.FONT_SIZE_H6,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: controller.user[0]["phoneNumber"]
                                            .toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    controller.onEditDetailPage();
                                  },
                                  icon: const Icon(Icons.edit),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
