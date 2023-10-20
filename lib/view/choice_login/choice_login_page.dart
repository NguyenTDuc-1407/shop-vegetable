import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/choice_login/choice_login_controller.dart';

class ChoiceLoginPage extends StatelessWidget {
  const ChoiceLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ChoiceLoginController(),
      builder: (ChoiceLoginController controller) => Scaffold(
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/images/login_1.png",
                  height: MyDimensions.mySize.height * 0.3,
                  width: MyDimensions.mySize.width * 0.9,
                ),
                Text(
                  "Let's you in",
                  style: TextStyle(
                    fontSize: MyDimensions.FONT_SIZE_H1 * 2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: MyDimensions.mySize.height * 0.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.mySize.width * 0.8,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/icons/fb.png",
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.SPACE_SIZE_5X * 1.5,
                          ),
                          title: const Text(
                            "Contine with Facebook",
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.mySize.width * 0.8,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/icons/google.png",
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.SPACE_SIZE_5X * 1.5,
                          ),
                          title: const Text(
                            "Contine with Google",
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MyDimensions.SPACE_SIZE_5X * 3,
                        width: MyDimensions.mySize.width * 0.8,
                        child: ListTile(
                          leading: Image.asset(
                            "assets/icons/apple.png",
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            width: MyDimensions.SPACE_SIZE_5X * 1.5,
                          ),
                          title: const Text(
                            "Contine with Apple",
                            style: TextStyle(fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "or",
                  style: TextStyle(
                      fontSize: MyDimensions.FONT_SIZE_H6,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: () => controller.onLoginPage(),
                  child: Container(
                    height: MyDimensions.SPACE_SIZE_5X * 2.5,
                    width: MyDimensions.mySize.width * 0.8,
                    margin: EdgeInsets.symmetric(
                        vertical: MyDimensions.SPACE_SIZE_5X),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_7X),
                        color: Colors.purple),
                    child: Center(
                      child: Text(
                        "Sign in with password",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MyDimensions.FONT_SIZE_H5),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_5X),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: MyDimensions.FONT_SIZE_SPAN),
                      ),
                      SizedBox(
                        width: MyDimensions.SPACE_SIZE_1X,
                      ),
                      InkWell(
                        // onTap: () => controller.onLoginPage(),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: const Color.fromARGB(255, 74, 169, 188),
                              fontSize: MyDimensions.FONT_SIZE_SPAN),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
