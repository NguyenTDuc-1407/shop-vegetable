import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/detail_item/detail_item_controller.dart';

class DetailItemPage extends GetView {
  const DetailItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetailItemController(),
      builder: (DetailItemController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 240, 240, 240),
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: MyDimensions.mySize.height * 0.4,
                floating: true,
                pinned: true,
                automaticallyImplyLeading: false,
                flexibleSpace: Stack(
                  children: [
                    Container(
                      height: MyDimensions.mySize.height * 0.5,
                      width: MyDimensions.mySize.width,
                      color: Colors.red,
                      child: Image.asset(
                        controller.detailItem["image"],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.onBack();
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                                left: MyDimensions.SPACE_SIZE_5X),
                            height: MyDimensions.SPACE_SIZE_5X * 2,
                            width: MyDimensions.SPACE_SIZE_5X * 2,
                            padding: EdgeInsets.all(MyDimensions.SPACE_SIZE_1X),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(62, 61, 54, 54)),
                            child: Image.asset(
                              "assets/icons/back-ios.png",
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            right: MyDimensions.SPACE_SIZE_5X,
                          ),
                          child: InkWell(
                            onTap: () {
                              controller.onNextPageCart();
                            },
                            child: Center(
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        right: MyDimensions.SPACE_SIZE_2X),
                                    padding: EdgeInsets.all(
                                        MyDimensions.SPACE_SIZE_1X),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(62, 61, 54, 54)),
                                    height: MyDimensions.SPACE_SIZE_5X * 2.9,
                                    width: MyDimensions.SPACE_SIZE_5X * 1.8,
                                    child: Image.asset(
                                      "assets/icons/cart.png",
                                      color: Colors.white,
                                    ),
                                  ),
                                  Visibility(
                                    visible: controller.checkCart,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: MyDimensions.SPACE_SIZE_1X),
                                      height: MyDimensions.SPACE_SIZE_4X * 1.3,
                                      width: MyDimensions.SPACE_SIZE_4X * 1.3,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                      child: Center(
                                        child: Text(
                                          controller.CartItem.length.toString(),
                                          style: TextStyle(
                                              fontSize: MyDimensions
                                                  .FONT_SIZE_SPAN_SMALL_EXTRA),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MyDimensions.SPACE_SIZE_3X,
                      ),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            controller.detailItem["title"],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_H2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            controller.detailItem["price"],
                            style: TextStyle(
                              fontSize: MyDimensions.FONT_SIZE_H2,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: MyDimensions.SPACE_SIZE_5X * 1.5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    RatingBar.builder(
                                      itemSize: MyDimensions.SPACE_SIZE_5X,
                                      initialRating: 4.5,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemBuilder: (context, index) =>
                                          const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (value) {},
                                    ),
                                    SizedBox(
                                      width: MyDimensions.SPACE_SIZE_1X,
                                    ),
                                    Text(
                                      "4.8",
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        fontSize:
                                            MyDimensions.FONT_SIZE_SPAN_SMALL,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                    RichText(
                                      overflow: TextOverflow.ellipsis,
                                      text: TextSpan(
                                        text: " | đã bán: ",
                                        style: TextStyle(
                                          fontSize:
                                              MyDimensions.FONT_SIZE_SPAN_SMALL,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: controller
                                                .detailItem["quantitySold"]
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: MyDimensions
                                                    .FONT_SIZE_SPAN_SMALL,
                                                fontWeight: FontWeight.w400),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.actionButtonLike();
                                      },
                                      child: SizedBox(
                                        height:
                                            MyDimensions.SPACE_SIZE_5X * 1.2,
                                        width: MyDimensions.SPACE_SIZE_5X * 1.2,
                                        child: controller.detailItem["like"]
                                            ? Image.asset(
                                                "assets/icons/heart_red.png")
                                            : Image.asset(
                                                "assets/icons/heart.png"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MyDimensions.SPACE_SIZE_5X * 1.2,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.share();
                                      },
                                      child: Image.asset(
                                        "assets/icons/share.png",
                                        height:
                                            MyDimensions.SPACE_SIZE_5X * 1.2,
                                        width: MyDimensions.SPACE_SIZE_5X * 1.2,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: MyDimensions.SPACE_SIZE_3X),
                      height: MyDimensions.mySize.height * 0.32,
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: MyDimensions.SPACE_SIZE_3X,
                              vertical: MyDimensions.SPACE_SIZE_2X,
                            ),
                            child: Text(
                              "Sản phẩm cùng loại",
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.homeItem.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {},
                                child: Container(
                                  margin: EdgeInsets.only(
                                      left: MyDimensions.SPACE_SIZE_2X,
                                      bottom: MyDimensions.SPACE_SIZE_2X),
                                  width: MyDimensions.mySize.width * 0.46,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                            bottom: MyDimensions.SPACE_SIZE_1X),
                                        height:
                                            MyDimensions.SPACE_SIZE_5X * 5.5,
                                        child: Image.asset(
                                          controller.homeItem[index]["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal:
                                                  MyDimensions.SPACE_SIZE_1X),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                controller.homeItem[index]
                                                    ["title"],
                                                style: TextStyle(
                                                    fontSize: MyDimensions
                                                        .FONT_SIZE_SPAN,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    top: MyDimensions
                                                        .SPACE_SIZE_1X,
                                                    bottom: MyDimensions
                                                        .SPACE_SIZE_1X),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      controller.homeItem[index]
                                                          ["price"],
                                                      style: TextStyle(
                                                          fontSize: MyDimensions
                                                              .FONT_SIZE_SPAN,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.teal),
                                                    ),
                                                    Expanded(
                                                      child: Container(
                                                        margin: EdgeInsets.only(
                                                            left: MyDimensions
                                                                .SPACE_SIZE_5X),
                                                        child: RichText(
                                                          textAlign:
                                                              TextAlign.right,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          text: TextSpan(
                                                            text: "đã bán: ",
                                                            style: TextStyle(
                                                              fontSize: MyDimensions
                                                                      .FONT_SIZE_SPAN_SMALL *
                                                                  0.75,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            children: [
                                                              TextSpan(
                                                                text: controller
                                                                    .homeItem[
                                                                        index][
                                                                        "quantitySold"]
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        MyDimensions.FONT_SIZE_SPAN_SMALL *
                                                                            0.75,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500),
                                                              )
                                                            ],
                                                          ),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: MyDimensions.SPACE_SIZE_5X,
                        bottom: MyDimensions.SPACE_SIZE_4X,
                      ),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: MyDimensions.SPACE_SIZE_3X),
                            child: Text(
                              "Mô tả sản phẩm",
                              style: TextStyle(
                                fontSize: MyDimensions.FONT_SIZE_H2,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: MyDimensions.SPACE_SIZE_1X,
                              horizontal: MyDimensions.SPACE_SIZE_3X,
                            ),
                            child: Text(
                              controller.detailItem["context"],
                              maxLines: controller.hideText ? 50 : 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.showAndHideText();
                            },
                            child: Container(
                                height: MyDimensions.SPACE_SIZE_5X * 2,
                                decoration: const BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                    ),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 185, 184, 184),
                                      blurRadius: 10,
                                      offset: Offset(0, -1),
                                    )
                                  ],
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      controller.hideText
                                          ? "thu gon"
                                          : "xem them",
                                    ),
                                    Icon(
                                      controller.hideText
                                          ? Icons.arrow_drop_up
                                          : Icons.arrow_drop_down,
                                    )
                                  ],
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            height: MyDimensions.mySize.height * 0.06,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 7),
              ],
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/cart.png",
                      height: MyDimensions.SPACE_SIZE_5X,
                      width: MyDimensions.SPACE_SIZE_5X,
                    ),
                    Text(
                      "Giỏ hàng",
                      style: TextStyle(
                        fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL,
                      ),
                    )
                  ],
                )),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.onBack();
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    right: MyDimensions.SPACE_SIZE_4X,
                                    top: MyDimensions.SPACE_SIZE_2X,
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: MyDimensions.SPACE_SIZE_4X),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: MyDimensions.SPACE_SIZE_5X,
                                        right: MyDimensions.SPACE_SIZE_3X,
                                      ),
                                      height: MyDimensions.SPACE_SIZE_5X * 6,
                                      width: MyDimensions.SPACE_SIZE_5X * 5,
                                      child: Image.asset(
                                        controller.detailItem["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.detailItem["price"],
                                          style: TextStyle(
                                              fontSize:
                                                  MyDimensions.FONT_SIZE_H5,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.red),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: MyDimensions.SPACE_SIZE_3X),
                                          height:
                                              MyDimensions.SPACE_SIZE_5X * 1.4,
                                          child: Row(
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
                                                  child: const Icon(Icons.add),
                                                ),
                                              ),
                                              Container(
                                                width:
                                                    MyDimensions.SPACE_SIZE_5X *
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
                                                  child:
                                                      const Icon(Icons.remove),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  controller.onNextPagePayment();
                                },
                                child: Container(
                                  height: MyDimensions.SPACE_SIZE_5X * 2.7,
                                  width: MyDimensions.mySize.width,
                                  color: Colors.teal,
                                  child: Center(
                                    child: Text(
                                      "Mua ngay",
                                      style: TextStyle(
                                          fontSize: MyDimensions.FONT_SIZE_H4,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    color: Colors.teal,
                    width: MyDimensions.mySize.width * 0.5,
                    child: Center(
                      child: Text(
                        "Mua ngay",
                        style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_H4,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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
