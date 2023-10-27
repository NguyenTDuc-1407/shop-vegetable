import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/sign_up/sign_up_controller.dart';
import '../../help/dimensions.dart';

class SignUpPage extends GetView {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SignUpController(),
      builder: (SignUpController controller) => GestureDetector(
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
                    "Create New Account",
                    style: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_H1 * 1.2,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: MyDimensions.mySize.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: MyDimensions.mySize.height * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Card(
                                margin: EdgeInsets.only(
                                  right: MyDimensions.SPACE_SIZE_5X * 1.5,
                                  left: MyDimensions.SPACE_SIZE_5X * 1.5,
                                ),
                                shape: BeveledRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      MyDimensions.BORDER_RADIUS_3X),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MyDimensions.SPACE_SIZE_4X),
                                  child: TextField(
                                    controller: controller.checkInputEmail,
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 74, 169, 188)),
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
                                    right: MyDimensions.SPACE_SIZE_5X * 1.5,
                                    left: MyDimensions.SPACE_SIZE_5X * 1.5,
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.BORDER_RADIUS_3X),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: MyDimensions.SPACE_SIZE_4X),
                                    child: TextField(
                                      controller: controller.checkInputPassword,
                                      onChanged: (value) =>
                                          controller.actionIconPassword(),
                                      obscureText:
                                          controller.inputPassword.value,
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 74, 169, 188),
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
                              Obx(
                                () => Card(
                                  margin: EdgeInsets.only(
                                    right: MyDimensions.SPACE_SIZE_5X * 1.5,
                                    left: MyDimensions.SPACE_SIZE_5X * 1.5,
                                  ),
                                  shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        MyDimensions.BORDER_RADIUS_3X),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: MyDimensions.SPACE_SIZE_4X),
                                    child: TextField(
                                      controller:
                                          controller.checkInputConfiPass,
                                      onChanged: (value) =>
                                          controller.actionIconPassword(),
                                      obscureText:
                                          controller.inputConfiPass.value,
                                      style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 74, 169, 188),
                                      ),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Config password",
                                        icon: const Icon(Icons.lock),
                                        suffixIcon: Visibility(
                                          visible: controller.iconConfiPass,
                                          child: IconButton(
                                            onPressed: () {
                                              controller.hideInputConfipass();
                                            },
                                            icon: Icon(
                                              controller.inputConfiPass.value
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
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: MyDimensions.SPACE_SIZE_5X,
                        // ),
                        InkWell(
                          onTap: () => controller.onLoginPage(),
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
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: MyDimensions.FONT_SIZE_SPAN * 1.2,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                  color: const Color.fromRGBO(164, 162, 162, 1),
                                  fontSize: MyDimensions.FONT_SIZE_SPAN),
                            ),
                            SizedBox(
                              width: MyDimensions.SPACE_SIZE_2X,
                            ),
                            InkWell(
                              onTap: () {
                                controller.onLoginPage();
                              },
                              child: Text(
                                "Login in",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontSize: MyDimensions.FONT_SIZE_H5),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
