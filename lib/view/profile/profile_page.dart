import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/profile/profile_controller.dart';

import '../../help/dimensions.dart';

class ProfilePage extends GetView {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ProfileController(),
      builder: (ProfileController controller) => Scaffold(
        appBar: AppBar(
          toolbarHeight: MyDimensions.SPACE_SIZE_2X,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        bottom: MyDimensions.SPACE_SIZE_5X * 2.8),
                    height: MyDimensions.mySize.height * 0.2,
                    width: MyDimensions.mySize.width,
                    child: Image.asset(
                      "assets/images/background-profile.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(left: MyDimensions.SPACE_SIZE_5X * 1.5),
                    child: Row(
                      children: [
                        Container(
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
                        Container(
                          margin: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_5X * 2.5),
                          height: MyDimensions.SPACE_SIZE_5X * 2.4,
                          width: MyDimensions.SPACE_SIZE_5X * 13,
                          child: ListTile(
                            title: Text(
                              "Aanya Sharma",
                              style: TextStyle(
                                  fontSize: MyDimensions.FONT_SIZE_H4,
                                  fontWeight: FontWeight.w700),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Banglore, India",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                ),
                                Text(
                                  "150 traveallies",
                                  style: TextStyle(
                                      color: Color(0xff4AA9BC),
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
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
                (index) => InkWell(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
