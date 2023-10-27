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
      builder: (LoginWithPasswordController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: InkWell(
                onTap: () {
                  controller.onBackPage();
                },
                child: Container(
                  margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
                  child: Image.asset(
                    "assets/icons/back-ios.png",
                  ),
                )),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: MyDimensions.mySize.height * 0.27,
                    width: MyDimensions.mySize.width * 0.6,
                  ),
                  Text(
                    "Login to Your Account",
                    style: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_H1 * 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_5X * 1.7,
                      right: MyDimensions.SPACE_SIZE_5X * 1.5,
                      left: MyDimensions.SPACE_SIZE_5X * 1.5,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
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
                  Obx(
                    () => Card(
                      margin: EdgeInsets.only(
                        top: MyDimensions.SPACE_SIZE_5X * 1.2,
                        right: MyDimensions.SPACE_SIZE_5X * 1.5,
                        left: MyDimensions.SPACE_SIZE_5X * 1.5,
                      ),
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_3X),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                        child: TextField(
                          controller: controller.checkInputPassword,
                          onChanged: (value) => controller.actionIconPassword(),
                          obscureText: controller.inputPassword.value,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188),
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            icon: const Icon(Icons.lock),
                            suffixIcon: Visibility(
                              visible: controller.iconPassword,
                              child: IconButton(
                                onPressed: () {
                                  controller.hideInputPassword();
                                },
                                icon: Icon(
                                  controller.inputPassword.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X * 1.3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Obx(
                              () => InkWell(
                                onTap: () => controller.actionCheckBox(),
                                child: Container(
                                  height: MyDimensions.SPACE_SIZE_5X,
                                  width: MyDimensions.SPACE_SIZE_5X,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.BORDER_RADIUS_2X),
                                    border: Border.all(
                                      color: Colors.purple,
                                      width: MyDimensions.ONE_UNIT_SIZE * 3,
                                    ),
                                    color: controller.checkBox.value
                                        ? Colors.white
                                        : Colors.purple,
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: MyDimensions.ONE_UNIT_SIZE * 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MyDimensions.ONE_UNIT_SIZE * 10,
                            ),
                            const Text(
                              'Remember me',
                              style: TextStyle(
                                color: Color.fromRGBO(164, 162, 162, 1),
                              ),
                            )
                          ],
                        ),
                        GestureDetector(
                          child: const Text(
                            'Forgot the Password?',
                            style: TextStyle(
                              color: Color.fromRGBO(164, 162, 162, 1),
                            ),
                          ),
                          onTap: () {
                            controller.onNextPageForget();
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MyDimensions.SPACE_SIZE_5X * 1.5,
                  ),
                  InkWell(
                    onTap: () => controller.onNextPageHome(),
                    child: Container(
                      height: MyDimensions.SPACE_SIZE_5X * 2.7,
                      width: MyDimensions.mySize.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_7X),
                        color: Colors.purple,
                      ),
                      child: Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_SPAN * 1.2,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: MyDimensions.SPACE_SIZE_5X),
                    child: Text(
                      "or continue with",
                      style: TextStyle(
                        color: const Color.fromRGBO(164, 162, 162, 1),
                        fontSize: MyDimensions.FONT_SIZE_H6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.SPACE_SIZE_5X * 4,
                        padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_3X),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyDimensions.SPACE_SIZE_2X),
                          border: Border.all(
                              color: const Color.fromRGBO(
                                164,
                                162,
                                162,
                                1,
                              ),
                              width: MyDimensions.ONE_UNIT_SIZE * 0.2),
                        ),
                        child: Image.asset(
                          "assets/icons/fb.png",
                        ),
                      ),
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.SPACE_SIZE_5X * 4,
                        padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_3X),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyDimensions.SPACE_SIZE_2X),
                          border: Border.all(
                              color: const Color.fromRGBO(
                                164,
                                162,
                                162,
                                1,
                              ),
                              width: MyDimensions.ONE_UNIT_SIZE * 0.2),
                        ),
                        child: Image.asset(
                          "assets/icons/google.png",
                        ),
                      ),
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.SPACE_SIZE_5X * 4,
                        padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_3X),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(MyDimensions.SPACE_SIZE_2X),
                          border: Border.all(
                              color: const Color.fromRGBO(
                                164,
                                162,
                                162,
                                1,
                              ),
                              width: MyDimensions.ONE_UNIT_SIZE * 0.2),
                        ),
                        child: Image.asset(
                          "assets/icons/apple.png",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MyDimensions.SPACE_SIZE_5X,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an account?",
                        style: TextStyle(
                            color: const Color.fromRGBO(164, 162, 162, 1),
                            fontSize: MyDimensions.FONT_SIZE_SPAN),
                      ),
                      SizedBox(
                        width: MyDimensions.SPACE_SIZE_2X,
                      ),
                      InkWell(
                        onTap: () {
                          controller.onSignUpPage();
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: MyDimensions.FONT_SIZE_H5),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MyDimensions.SPACE_SIZE_5X,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
