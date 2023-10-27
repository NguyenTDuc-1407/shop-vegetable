import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/forget_password/forget_password_controller.dart';

import '../../help/dimensions.dart';
import '../../utils/app_colors.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ForgetPasswordController(),
      builder: (controller) => GestureDetector(
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
            title: const Text("Quên mật khẩu",
                style: TextStyle(color: Colors.black)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MyDimensions.mySize.height * 0.45,
                  child: Image.asset("assets/images/forget_pass.png"),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MyDimensions.SPACE_SIZE_5X,
                      ),
                      child: Text(
                        'Quên mật khẩu',
                        style: TextStyle(
                          fontSize: MyDimensions.FONT_SIZE_H4,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: MyDimensions.SPACE_SIZE_5X,
                          left: MyDimensions.SPACE_SIZE_5X * 2,
                          right: MyDimensions.SPACE_SIZE_5X * 2),
                      child: Text(
                        'Don’t worry ! It happens. Please enter the phone number we will send the OTP in this email.',
                        style: TextStyle(
                          color: AppColors.blackText,
                          fontSize: MyDimensions.FONT_SIZE_H6 * 0.8,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(
                        top: MyDimensions.SPACE_SIZE_5X * 1.5,
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
                    Container(
                      margin: EdgeInsets.only(
                          top: MyDimensions.SPACE_SIZE_5X * 2,
                          bottom: MyDimensions.SPACE_SIZE_5X),
                      width: MyDimensions.mySize.width * 0.8,
                      height: MyDimensions.SPACE_SIZE_5X * 2.5,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.teal),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  MyDimensions.BORDER_RADIUS_4X),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                        ),
                        onPressed: () {
                          controller.onOtpPage();
                        },
                        child: Text(
                          'Nhận mã',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: AppColors.white,
                            fontSize: MyDimensions.FONT_SIZE_SPAN,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
