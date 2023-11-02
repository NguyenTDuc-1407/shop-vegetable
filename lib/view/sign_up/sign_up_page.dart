// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/sign_up/sign_up_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
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
          //App bar
          appBar: Appbar(controller),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  // logo app
                  Logo(),
                  // text
                  text(),
                  // input information and button sign up login in
                  inputAndButton(controller, context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox inputAndButton(SignUpController controller, BuildContext context) {
    return SizedBox(
      height: MyDimensions.mySize.height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: MyDimensions.mySize.height * 0.3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // input email
                inputEmail(controller),
                // input password
                inputPassword(controller),
                // input config password
                inputConfigPassword(controller),
              ],
            ),
          ),
          // button sign up
          buttonSignUp(controller, context),
          //text login
          textLogin(controller),
        ],
      ),
    );
  }

  Row textLogin(SignUpController controller) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextApp.alreadyHaveAnAccount,
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
            TextApp.logIn,
            style: TextStyle(
                color: Colors.purple, fontSize: MyDimensions.FONT_SIZE_H5),
          ),
        ),
      ],
    );
  }

  InkWell buttonSignUp(SignUpController controller, BuildContext context) {
    return InkWell(
      onTap: () {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.info(
            message: "Tạo tài khoản thành công",
            backgroundColor: Colors.teal,
          ),
        );
        controller.onLoginPage();
      },
      child: Container(
        height: MyDimensions.SPACE_SIZE_5X * 2.7,
        width: MyDimensions.mySize.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
          color: Colors.purple,
        ),
        child: Center(
          child: Text(
            TextApp.signUp,
            style: TextStyle(
                fontSize: MyDimensions.FONT_SIZE_SPAN * 1.2,
                color: Colors.white),
          ),
        ),
      ),
    );
  }

  Obx inputConfigPassword(SignUpController controller) {
    return Obx(
      () => Card(
        margin: EdgeInsets.only(
          right: MyDimensions.SPACE_SIZE_5X * 1.5,
          left: MyDimensions.SPACE_SIZE_5X * 1.5,
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
          child: TextField(
            controller: controller.checkInputConfiPass,
            onChanged: (value) => controller.actionIconPassword(),
            obscureText: controller.inputConfiPass.value,
            style: const TextStyle(
              color: Color.fromARGB(255, 74, 169, 188),
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
    );
  }

  Obx inputPassword(SignUpController controller) {
    return Obx(
      () => Card(
        margin: EdgeInsets.only(
          right: MyDimensions.SPACE_SIZE_5X * 1.5,
          left: MyDimensions.SPACE_SIZE_5X * 1.5,
        ),
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
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
    );
  }

  Card inputEmail(SignUpController controller) {
    return Card(
      margin: EdgeInsets.only(
        right: MyDimensions.SPACE_SIZE_5X * 1.5,
        left: MyDimensions.SPACE_SIZE_5X * 1.5,
      ),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_3X),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
        child: TextField(
          controller: controller.checkInputEmail,
          style: const TextStyle(color: Color.fromARGB(255, 74, 169, 188)),
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: "Email",
            icon: Icon(Icons.email),
          ),
        ),
      ),
    );
  }

  Text text() {
    return Text(
      TextApp.createNewAccont,
      style: TextStyle(
          fontSize: MyDimensions.FONT_SIZE_H1 * 1.2,
          fontWeight: FontWeight.w700),
    );
  }

  Image Logo() {
    return Image.asset(
      ImagePath.logo,
      height: MyDimensions.mySize.height * 0.27,
      width: MyDimensions.mySize.width * 0.6,
    );
  }

  AppBar Appbar(SignUpController controller) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: InkWell(
          onTap: () {
            controller.onBackPage();
          },
          child: Container(
            margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
            child: Image.asset(
              ImagePath.back,
            ),
          )),
    );
  }
}
