import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopvegetable/view/login_with_password/login_with_password_controller.dart';

import '../../help/dimensions.dart';

class LoginWithPasswordPage extends GetView {
  const LoginWithPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LoginWithPasswordController(),
      builder: (LoginWithPasswordController controller) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
            onTap: () {
              controller.onBackPage();
            },
            child: Image.asset("assets/icons/back-ios.png"),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logobca8v.png',
                height: MyDimensions.mySize.height * 0.3,
                width: MyDimensions.mySize.width * 0.6,
              ),
              Text(
                "Login to Your Account",
                style: TextStyle(
                    fontSize: MyDimensions.FONT_SIZE_H1 * 1.2,
                    fontWeight: FontWeight.w700),
              ),
              Container(
                margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 2),
                padding: EdgeInsets.only(
                  left: MyDimensions.ONE_UNIT_SIZE * 9,
                ),
                width: MyDimensions.mySize.width * 0.8,
                height: MyDimensions.SPACE_SIZE_5X * 2,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  controller: controller.checkInputEmail,
                  style:
                      const TextStyle(color: Color.fromARGB(255, 74, 169, 188)),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(border: InputBorder.none),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
