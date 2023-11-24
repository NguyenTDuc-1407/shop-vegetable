import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/cart/cart_controller.dart';

class CartPage extends GetView {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CartController(),
      builder: (CartController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 228, 226, 226),
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {
                controller.onBack();
              },
              child: Container(
                margin: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
                child: Image.asset(
                  "assets/icons/back-ios.png",
                ),
              ),
            ),
            title:
                const Text("Giỏ hàng", style: TextStyle(color: Colors.black)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: controller.hideCart,
                child: Center(
                  child: SizedBox(
                    height: MyDimensions.mySize.height * 0.3,
                    width: MyDimensions.mySize.height * 0.7,
                    child: Column(
                      children: [
                        Image.asset(ImagePath.noCart),
                        Text(
                          TextApp.gioHangTrong,
                          style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_H3,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: controller.showdCart,
                child: Expanded(
                  child: ListView.builder(
                    itemCount: controller.cartItem.length,
                    itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                      height: MyDimensions.mySize.height * 0.2,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      activeColor: Colors.red,
                                      value: controller.cartItem[index]
                                          ["checkbox"],
                                      onChanged: (value) {
                                        controller.onCheckBoxId(index);
                                      },
                                    ),
                                    SizedBox(
                                      height: MyDimensions.SPACE_SIZE_5X * 6,
                                      width: MyDimensions.SPACE_SIZE_5X * 5,
                                      child: Image.asset(
                                        controller.cartItem[index]["image"],
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      top: MyDimensions.SPACE_SIZE_1X,
                                      left: MyDimensions.SPACE_SIZE_1X,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  controller
                                                      .onRemoveItemCart(index);
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: MyDimensions
                                                          .SPACE_SIZE_2X),
                                                  child: Text(
                                                    "xóa",
                                                    style: TextStyle(
                                                        fontSize: MyDimensions
                                                            .FONT_SIZE_H6),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          controller.cartItem[index]["title"],
                                          style: TextStyle(
                                            fontSize: MyDimensions.FONT_SIZE_H1,
                                            fontWeight: FontWeight.w500,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical:
                                                    MyDimensions.SPACE_SIZE_1X),
                                            child: Text(
                                              controller.cartItem[index]
                                                  ["price"],
                                              style: TextStyle(
                                                  fontSize: MyDimensions
                                                      .FONT_SIZE_H6),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                bottom:
                                                    MyDimensions.SPACE_SIZE_5X),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: MyDimensions
                                                            .SPACE_SIZE_5X *
                                                        2,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    child:
                                                        const Icon(Icons.add),
                                                  ),
                                                ),
                                                Container(
                                                  width: MyDimensions
                                                          .SPACE_SIZE_5X *
                                                      3,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey)),
                                                  child: TextField(
                                                    textAlign: TextAlign.center,
                                                    controller:
                                                        controller.inputQuatity,
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 74, 169, 188)),
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration:
                                                        const InputDecoration(
                                                      border: InputBorder.none,
                                                    ),
                                                  ),
                                                ),
                                                // Text(
                                                //   controller.cartItem[index]
                                                //           ["quatity"]
                                                //       .toString(),
                                                //   style: TextStyle(
                                                //       fontSize: MyDimensions
                                                //           .FONT_SIZE_SPAN),
                                                // ),
                                                InkWell(
                                                  onTap: () {},
                                                  child: Container(
                                                    width: MyDimensions
                                                            .SPACE_SIZE_5X *
                                                        2,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    child: const Icon(
                                                        Icons.remove),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
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
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: MyDimensions.mySize.height * 0.08,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 7),
              ],
              color: Colors.white,
            ),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: controller.checkBox,
                      onChanged: (value) {
                        controller.onCheckBox();
                      },
                    ),
                    Text(
                      "tất cả",
                      style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H6),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right: MyDimensions.SPACE_SIZE_1X,
                          top: MyDimensions.SPACE_SIZE_2X),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Tổng thanh toán: ",
                                style: TextStyle(
                                  fontSize:
                                      MyDimensions.FONT_SIZE_SPAN_SMALL_EXTRA *
                                          1.1,
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
                          Visibility(
                            visible: controller.checkBox,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_1X,
                              ),
                              child: const Text(
                                "mã khuyến mãi",
                                textAlign: TextAlign.right,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.onNextPagePayment();
                      },
                      child: Container(
                        color: Colors.teal,
                        width: MyDimensions.mySize.width * 0.3,
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Mua hàng ",
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H6,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              children: [
                                TextSpan(
                                  text: controller.item.toString(),
                                  style: TextStyle(
                                    fontSize: MyDimensions.FONT_SIZE_SPAN,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
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
