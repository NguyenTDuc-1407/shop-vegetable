import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/notification/notification_controller.dart';

class NotificationPage extends GetView {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: NotificationController(),
      builder: (NotificationController controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 228, 226, 226),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            "Thông báo",
            style: TextStyle(
              color: Colors.black,
              fontSize: MyDimensions.FONT_SIZE_H3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MyDimensions.SPACE_SIZE_5X,
              ),
              ...List.generate(
                controller.notification.length,
                (index) => Container(
                  margin: EdgeInsets.only(top: MyDimensions.BORDER_RADIUS_4X),
                  color: Colors.white,
                  child: ListTile(
                    leading: Container(
                      height: MyDimensions.SPACE_SIZE_5X * 1.5,
                      width: MyDimensions.SPACE_SIZE_5X * 1.5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Image.asset(
                        controller.notification[index]["leading"],
                      ),
                    ),
                    title: Container(
                      margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_2X),
                      child: Text(
                        controller.notification[index]["title"],
                        style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_H5,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    subtitle: Container(
                      margin:
                          EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_2X),
                      child: Text(
                        controller.notification[index]["context"],
                        style: TextStyle(
                          fontSize: MyDimensions.FONT_SIZE_SPAN,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      ),
                    ),
                    trailing: SizedBox(
                      height: MyDimensions.mySize.height,
                      child: const Icon(Icons.navigate_next),
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
