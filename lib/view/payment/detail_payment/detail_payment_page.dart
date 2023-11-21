import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/payment/detail_payment/detail_payment_controller.dart';

import '../../../help/dimensions.dart';
import '../../../utils/image_path.dart';
import '../../../utils/text_app.dart';

class DetailPaymentPage extends GetView {
  const DetailPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetailPaymentController(),
      builder: (DetailPaymentController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              TextApp.kiemTraThongTinThanhToan,
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
            child: Container(
              margin: EdgeInsets.only(
                top: MyDimensions.SPACE_SIZE_4X,
                left: MyDimensions.SPACE_SIZE_5X * 1.5,
                right: MyDimensions.SPACE_SIZE_5X * 1.5,
                bottom: MyDimensions.SPACE_SIZE_5X,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    TextApp.tenNguoiNhan,
                    style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_2X,
                      bottom: MyDimensions.SPACE_SIZE_4X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_1X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.inputName,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: TextApp.tenNguoiNhan,
                          icon: const Icon(Icons.person),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    TextApp.std,
                    style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_2X,
                      bottom: MyDimensions.SPACE_SIZE_4X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_1X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.inputPhoneNumber,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: TextApp.std,
                          icon: const Icon(Icons.phone),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    TextApp.diaChi,
                    style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                  ),
                  Card(
                    margin: EdgeInsets.only(
                      top: MyDimensions.SPACE_SIZE_2X,
                      bottom: MyDimensions.SPACE_SIZE_4X,
                    ),
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_1X),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: MyDimensions.SPACE_SIZE_4X),
                      child: TextField(
                        controller: controller.inputLocation,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 74, 169, 188)),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: TextApp.diaChi,
                          icon: const Icon(Icons.location_city),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_4X),
                    child: RichText(
                      text: TextSpan(
                        text: TextApp.phuongThucThanhToan,
                        style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_H6,
                            color: Colors.black),
                        children: [
                          TextSpan(
                            text: ": ",
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_SPAN,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: controller.paychoice,
                            style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_SPAN,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    TextApp.danhSachDonHang,
                    style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                  ),
                  SizedBox(
                    height: MyDimensions.SPACE_SIZE_4X,
                  ),
                  ...List.generate(
                    controller.itemList.length,
                    (index) => Container(
                      margin:
                          EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_3X),
                      decoration:
                          BoxDecoration(border: Border.all(color: Colors.grey)),
                      child: Row(
                        children: [
                          SizedBox(
                              height: MyDimensions.SPACE_SIZE_5X * 5,
                              width: MyDimensions.SPACE_SIZE_5X * 4,
                              child: Image.asset(
                                  controller.itemList[index]["image"])),
                          Container(
                            margin: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_5X,
                              left: MyDimensions.SPACE_SIZE_3X,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MyDimensions.mySize.width * 0.6,
                                  child: Text(
                                    controller.itemList[index]["title"],
                                    style: TextStyle(
                                      fontSize: MyDimensions.FONT_SIZE_H1,
                                      fontWeight: FontWeight.w500,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical:
                                          MyDimensions.SPACE_SIZE_1X * 1.5),
                                  child: Text(
                                    controller.itemList[index]["price"],
                                    style: TextStyle(
                                        fontSize: MyDimensions.FONT_SIZE_H6),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: MyDimensions.SPACE_SIZE_2X),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        TextApp.soLuong,
                                        style: TextStyle(
                                            fontSize:
                                                MyDimensions.FONT_SIZE_SPAN),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(
                                            left: MyDimensions.SPACE_SIZE_1X *
                                                0.5),
                                        child: Text(
                                          controller.itemList[index]["quatity"]
                                              .toString(),
                                          style: TextStyle(
                                            fontSize:
                                                MyDimensions.FONT_SIZE_SPAN,
                                            overflow: TextOverflow.visible,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: MyDimensions.mySize.height * 0.08,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MyDimensions.SPACE_SIZE_1X,
                      top: MyDimensions.SPACE_SIZE_2X),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Tổng thanh toán: ",
                            style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_SPAN,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_SPAN,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    // controller.onNextPagePayment();
                  },
                  child: Container(
                    color: Colors.teal,
                    width: MyDimensions.mySize.width * 0.3,
                    child: Center(
                        child: Text(
                      "Mua hàng ",
                      style: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_H6,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    )),
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
