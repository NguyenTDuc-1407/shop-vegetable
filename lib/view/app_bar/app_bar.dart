import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAppBar extends GetView {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            // controller.onBackPage();
          },
          child: Image.asset("assets/icons/back-ios.png"),
        ),
      ),
    );
  }
}
