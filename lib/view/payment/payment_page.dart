import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/payment/payment_controller.dart';

import '../../help/dimensions.dart';

class PaymentPage extends GetView {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: PaymentController(),
      builder: (PaymentController controller) => Scaffold(
          backgroundColor: const Color.fromARGB(255, 228, 226, 226),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              TextApp.phuongThucThanhToan,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: MyDimensions.FONT_SIZE_H5,
              ),
            ),
            leading: InkWell(
              onTap: () {
                controller.onBack();
              },
              child: Container(
                margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
                child: Image.asset(
                  ImagePath.back,
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_5X,
                      left: MyDimensions.SPACE_SIZE_5X),
                  child: Text(
                    TextApp.chonPhuongThucThanhToan,
                    style: TextStyle(
                      fontSize: MyDimensions.FONT_SIZE_H5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: MyDimensions.SPACE_SIZE_1X,
                ),
                ...List.generate(
                  controller.payment.length,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MyDimensions.SPACE_SIZE_5X,
                        vertical: MyDimensions.SPACE_SIZE_2X),
                    color: Colors.white,
                    child: Row(
                      children: [
                        Radio(
                          value: controller.paymentChoice,
                          groupValue: controller.payment[index]["pay"],
                          onChanged: (value) {
                            controller.choicePayment(index);
                          },
                        ),
                        Image.asset(
                          controller.payment[index]["icon"],
                          height: MyDimensions.SPACE_SIZE_5X * 1.5,
                          width: MyDimensions.SPACE_SIZE_5X * 1.5,
                        ),
                        SizedBox(
                          width: MyDimensions.SPACE_SIZE_2X,
                        ),
                        Expanded(child: Text(controller.payment[index]["pay"])),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_3X,
                      left: MyDimensions.SPACE_SIZE_5X),
                  child: Text(
                    TextApp.lienKetPhuongThucThanhToan,
                    style: TextStyle(
                      fontSize: MyDimensions.FONT_SIZE_H5,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: MyDimensions.SPACE_SIZE_1X,
                ),
                ...List.generate(
                  controller.paymentLink.length,
                  (index) => Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: MyDimensions.SPACE_SIZE_5X,
                        vertical: MyDimensions.SPACE_SIZE_2X),
                    color: Colors.white,
                    child: ListTile(
                      title: Text(controller.paymentLink[index]),
                      trailing: SizedBox(
                        height: MyDimensions.mySize.height,
                        child: const Icon(Icons.navigate_next),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: InkWell(
            onTap: () {
              controller.onDetailPaymentPage();
            },
            child: Container(
              height: MyDimensions.SPACE_SIZE_5X * 2.7,
              width: MyDimensions.mySize.width * 0.8,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
                color: Colors.purple,
              ),
              child: Center(
                child: Text(
                  TextApp.xacNhanPhuongThucThanhToan,
                  style: TextStyle(
                      fontSize: MyDimensions.FONT_SIZE_SPAN,
                      color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }
}
