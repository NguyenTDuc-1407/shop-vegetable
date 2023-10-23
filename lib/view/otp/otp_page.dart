import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:shopvegetable/view/otp/otp_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../../help/dimensions.dart';
import '../../utils/app_colors.dart';

class OtpPage extends GetView {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: OtpController(),
      builder: (OtpController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_2X),
                  child: Text(
                    'XÁC THỰC OTP',
                    style: TextStyle(
                        color: AppColors.blackText,
                        fontWeight: FontWeight.w500,
                        fontSize: MyDimensions.FONT_SIZE_H1 * 1.2),
                  ),
                ),
                Container(
                  width: MyDimensions.mySize.width * 0.95,
                  height: MyDimensions.mySize.height * 0.3,
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_5X * 1.2,
                            bottom: MyDimensions.SPACE_SIZE_5X * 1.2),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                            text: "Nhập mã OTP đã được gửi về qua số điện\n",
                            style: TextStyle(
                              color: Color.fromRGBO(70, 70, 71, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "thoại của bạn",
                                style: TextStyle(
                                    color: Color.fromRGBO(70, 70, 71, 1)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 3,
                            width: MyDimensions.SPACE_SIZE_5X * 3,
                            child: TextField(
                              onChanged: (value) {
                                if (value.length == 1) {
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]'),
                                ),
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                              ),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: AppColors.blue),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_5X * 1.5),
                        height: MyDimensions.SPACE_SIZE_5X * 2,
                        width: MyDimensions.mySize.width * 0.8,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColors.blue,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    MyDimensions.BORDER_RADIUS_2X),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(0),
                          ),
                          onPressed: () {
                            controller.pageLogin();
                          },
                          child: const Text(
                            'Xác nhận mã',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    bottom: MyDimensions.SPACE_SIZE_5X,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Thời gian còn lại: ',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 137, 1),
                        ),
                      ),
                      Countdown(
                        controller: controller.countdownController,
                        seconds: controller.timeStart,
                        onFinished: () {
                          print("asdsa");
                        },
                        build: (p0, double time) => Text(
                          time.toString(),
                          style: const TextStyle(
                            color: Color.fromRGBO(128, 128, 137, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MyDimensions.mySize.width,
                  height: MyDimensions.mySize.height * 0.3,
                  child: Image.asset(
                    "assets/images/otp1.png",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_4X),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Bạn chưa nhận được mã? ',
                          style: TextStyle(
                            color: Color.fromRGBO(164, 162, 162, 1),
                          )),
                      InkWell(
                        onTap: () {
                          controller.onRestStart();
                        },
                        child: const Text(
                          'Gửi lại',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ),
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
