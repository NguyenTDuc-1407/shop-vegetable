// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/first/first_controller.dart';

class FirstPage extends GetView {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FirstController(),
      builder: (FirstController controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                ImagePath.logo,
                height: MyDimensions.SPACE_SIZE_5X * 10,
                width: MyDimensions.SPACE_SIZE_5X * 10,
              ),
            ),
            Text(
              TextApp.Tuhaonongsanviet,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MyDimensions.FONT_SIZE_H1,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
