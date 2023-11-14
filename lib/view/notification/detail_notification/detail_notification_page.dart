// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/notification/detail_notification/detail_notification_controller.dart';

import '../../../help/dimensions.dart';

class DetailNotificationPage extends GetView {
  const DetailNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetailNotificationController(),
      builder: (DetailNotificationController controller) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            controller.notification["title"].toString(),
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: MyDimensions.FONT_SIZE_H5,
            ),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_5X),
                  child: Text(
                    controller.notification["context"],
                    style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
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
