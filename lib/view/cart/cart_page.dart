import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/cart/cart_controller.dart';

class CartPage extends GetView {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CartController(),
      builder: (CartController controller) => Scaffold(
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
          title: const Text("Giỏ hàng", style: TextStyle(color: Colors.black)),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.cartItem.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                  height: MyDimensions.mySize.height * 0.2,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: MyDimensions.SPACE_SIZE_5X * 2,
                        color: const Color.fromARGB(255, 255, 202, 123),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.red,
                                  value: controller.cartItem[index]["checkbox"],
                                  onChanged: (value) {
                                    controller.onCheckBoxId(index);
                                  },
                                ),
                                const Text("asddd"),
                              ],
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(
                                    right: MyDimensions.SPACE_SIZE_4X),
                                child: const Text("xóa"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  activeColor: Colors.red,
                                  value: controller.cartItem[index]["checkbox"],
                                  onChanged: (value) {
                                    controller.onCheckBoxId(index);
                                  },
                                ),
                                SizedBox(
                                    height: MyDimensions.SPACE_SIZE_5X * 5,
                                    width: MyDimensions.SPACE_SIZE_5X * 4,
                                    child: Image.asset(
                                        controller.cartItem[index]["image"]))
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: MyDimensions.SPACE_SIZE_5X,
                                left: MyDimensions.SPACE_SIZE_3X,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MyDimensions.mySize.width * 0.63,
                                    child: Text(
                                      controller.cartItem[index]["title"],
                                      style: TextStyle(
                                        fontSize: MyDimensions.FONT_SIZE_H1,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        vertical: MyDimensions.SPACE_SIZE_2X),
                                    child: Text(
                                      controller.cartItem[index]["price"],
                                      style: TextStyle(
                                          fontSize: MyDimensions.FONT_SIZE_H6),
                                    ),
                                  ),
                                  SizedBox(
                                    width: MyDimensions.SPACE_SIZE_5X * 8,
                                    height: MyDimensions.SPACE_SIZE_5X * 1.4,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width:
                                                MyDimensions.SPACE_SIZE_5X * 2,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: const Icon(Icons.add),
                                          ),
                                        ),
                                        Text(
                                          controller.cartItem[index]["quatity"]
                                              .toString(),
                                          style: TextStyle(
                                              fontSize:
                                                  MyDimensions.FONT_SIZE_SPAN),
                                        ),
                                        // Expanded(
                                        //   child: Card(
                                        //     child: TextField(
                                        //       controller:
                                        //           controller.InputQuatity,
                                        //       style: const TextStyle(
                                        //           color: Color.fromARGB(
                                        //               255, 74, 169, 188)),
                                        //       keyboardType:
                                        //           TextInputType.emailAddress,
                                        //       decoration: const InputDecoration(
                                        //         border: InputBorder.none,
                                        //         hintText: "Email",
                                        //       ),
                                        //     ),
                                        //   ),
                                        // ),

                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width:
                                                MyDimensions.SPACE_SIZE_5X * 2,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            child: const Icon(Icons.remove),
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
                    ],
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
                  Container(
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
