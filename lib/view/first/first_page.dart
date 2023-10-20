// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/first/first_controller.dart';

class FirstPage extends GetView {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: FirstController(),
      builder: (FirstController controller) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/logobca8v.png',
                height: MyDimensions.SPACE_SIZE_5X * 5,
                width: MyDimensions.SPACE_SIZE_5X * 5,
              ),
            ),
            Text(
              "wellcome",
              style: TextStyle(
                  color: Colors.white, fontSize: MyDimensions.FONT_SIZE_H2),
            ),
            Text(
              "afafsdfsdgsdgsggsgsdg",
              style: TextStyle(
                  color: Colors.white, fontSize: MyDimensions.FONT_SIZE_SPAN),
            ),
          ],
        ),
      ),
    );
  }
}
