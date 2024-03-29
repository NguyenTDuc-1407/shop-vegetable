import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/home/home_controller.dart';
import 'package:slide_countdown/slide_countdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../help/dimensions.dart';

class HomePage extends GetView {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (HomeController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: RefreshIndicator(
            onRefresh: () async {
              controller.Refresh();
            },
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  floating: true,
                  pinned: true,
                  title: Text(
                    'Kindacode.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: MyDimensions.FONT_SIZE_H4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  actions: [
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
                                height: MyDimensions.SPACE_SIZE_5X * 2.5,
                                width: MyDimensions.SPACE_SIZE_5X * 1.4,
                                child: Image.asset(
                                  "assets/icons/cart.png",
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
                  bottom: AppBar(
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    elevation: 0,
                    title: Container(
                      width: double.infinity,
                      height: MyDimensions.SPACE_SIZE_5X * 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            MyDimensions.BORDER_RADIUS_2X),
                        border: Border.all(color: Colors.black),
                      ),
                      child: const Center(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        margin:
                            EdgeInsets.only(top: MyDimensions.SPACE_SIZE_5X),
                        height: MyDimensions.mySize.height * 0.18,
                        child: CarouselSlider.builder(
                          itemCount: controller.homebanner.length,
                          itemBuilder: (context, index, realIndex) => Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: MyDimensions.SPACE_SIZE_2X),
                                width: MyDimensions.mySize.width,
                                child: Image.asset(
                                  controller.homebanner[index]["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                              AnimatedSmoothIndicator(
                                activeIndex: controller.currentIndex,
                                count: controller.homebanner.length,
                                effect: SlideEffect(
                                  dotHeight: MyDimensions.SPACE_SIZE_1X * 1.5,
                                  dotWidth: MyDimensions.SPACE_SIZE_1X * 1.5,
                                  dotColor: Colors.grey,
                                  activeDotColor: Colors.teal,
                                ),
                              )
                            ],
                          ),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enableInfiniteScroll: true,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 3),
                            onPageChanged: (index, reason) {
                              controller.onPageImage(index);
                            },
                          ),
                        ),
                      ),
                      Visibility(
                        visible: controller.checkSale,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MyDimensions.SPACE_SIZE_1X,
                              left: MyDimensions.SPACE_SIZE_2X,
                              right: MyDimensions.SPACE_SIZE_2X),
                          height: MyDimensions.mySize.height * 0.31,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: MyDimensions.SPACE_SIZE_1X,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Sale",
                                      style: TextStyle(
                                        fontSize: MyDimensions.FONT_SIZE_H3,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SlideCountdown(
                                      onDone: () {
                                        controller.checkTimeSale();
                                      },
                                      duration: controller.defaultDuration,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: MyDimensions.SPACE_SIZE_3X,
                                        vertical: MyDimensions.SPACE_SIZE_1X,
                                      ),
                                      textStyle: TextStyle(
                                        fontSize: MyDimensions.FONT_SIZE_H5,
                                      ),
                                      separatorStyle:
                                          const TextStyle(color: Colors.black),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(
                                              MyDimensions.BORDER_RADIUS_2X),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  controller: controller.scrollController,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: controller.Item.length,
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        right: MyDimensions.SPACE_SIZE_5X,
                                      ),
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
                                                bottom:
                                                    MyDimensions.SPACE_SIZE_1X),
                                            height: MyDimensions.SPACE_SIZE_5X *
                                                5.5,
                                            child: Image.asset(
                                              controller.Item[index]["image"],
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: MyDimensions
                                                      .SPACE_SIZE_1X),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    controller.Item[index]
                                                            ["title"]
                                                        .toString(),
                                                    style: TextStyle(
                                                        fontSize: MyDimensions
                                                            .FONT_SIZE_SPAN,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                  // Container(
                                                  //   margin: EdgeInsets.only(
                                                  //       top: MyDimensions
                                                  //           .SPACE_SIZE_1X,
                                                  //       bottom: MyDimensions
                                                  //           .SPACE_SIZE_1X),
                                                  //   child: Row(
                                                  //     mainAxisAlignment:
                                                  //         MainAxisAlignment
                                                  //             .spaceBetween,
                                                  //     children: [
                                                  //       Text(
                                                  //         controller.homeItem[
                                                  //             index]["price"],
                                                  //         style: TextStyle(
                                                  //             fontSize: MyDimensions
                                                  //                 .FONT_SIZE_SPAN,
                                                  //             fontWeight:
                                                  //                 FontWeight
                                                  //                     .w500,
                                                  //             color:
                                                  //                 Colors.teal),
                                                  //       ),
                                                  //       Expanded(
                                                  //         child: Container(
                                                  //           margin: EdgeInsets.only(
                                                  //               left: MyDimensions
                                                  //                   .SPACE_SIZE_5X),
                                                  //           child: RichText(
                                                  //             textAlign:
                                                  //                 TextAlign
                                                  //                     .right,
                                                  //             overflow:
                                                  //                 TextOverflow
                                                  //                     .ellipsis,
                                                  //             text: TextSpan(
                                                  //               text:
                                                  //                   "đã bán: ",
                                                  //               style:
                                                  //                   TextStyle(
                                                  //                 fontSize:
                                                  //                     MyDimensions
                                                  //                             .FONT_SIZE_SPAN_SMALL *
                                                  //                         0.75,
                                                  //                 fontWeight:
                                                  //                     FontWeight
                                                  //                         .w500,
                                                  //                 color: Colors
                                                  //                     .black,
                                                  //               ),
                                                  //               children: [
                                                  //                 TextSpan(
                                                  //                   text: controller
                                                  //                       .quantitySoldList[
                                                  //                           index]
                                                  //                       .toString(),
                                                  //                   style: TextStyle(
                                                  //                       fontSize:
                                                  //                           MyDimensions.FONT_SIZE_SPAN_SMALL *
                                                  //                               0.75,
                                                  //                       fontWeight:
                                                  //                           FontWeight.w500),
                                                  //                 )
                                                  //               ],
                                                  //             ),
                                                  //           ),
                                                  //         ),
                                                  //       ),
                                                  //     ],
                                                  //   ),
                                                  // ),
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
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MyDimensions.SPACE_SIZE_3X,
                            left: MyDimensions.SPACE_SIZE_2X,
                            right: MyDimensions.SPACE_SIZE_2X,
                            bottom: MyDimensions.SPACE_SIZE_1X),
                        child: Text(
                          "Sản phẩm",
                          style: TextStyle(
                            fontSize: MyDimensions.FONT_SIZE_H3,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 1,
                    (context, index) => Container(
                      margin: EdgeInsets.only(
                          top: MyDimensions.SPACE_SIZE_1X,
                          left: MyDimensions.SPACE_SIZE_2X,
                          right: MyDimensions.SPACE_SIZE_2X),
                      height: MyDimensions.mySize.height,
                      child: GridView(
                        padding: const EdgeInsets.all(0),
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: (MyDimensions.ONE_UNIT_SIZE *
                              1.5 /
                              MyDimensions.SPACE_SIZE_1X *
                              6.5),
                          crossAxisSpacing: MyDimensions.SPACE_SIZE_1X,
                          mainAxisSpacing: MyDimensions.SPACE_SIZE_1X,
                        ),
                        children: [
                          ...List.generate(
                            controller.homeItem.length,
                            (index) => GestureDetector(
                              onTap: () {
                                controller.onNextDetailItem(index);
                              },
                              child: Container(
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
                                      height: MyDimensions.SPACE_SIZE_5X * 5.5,
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
                                                      ["title"]
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: MyDimensions
                                                      .FONT_SIZE_SPAN,
                                                  fontWeight: FontWeight.w500),
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
                                                                FontWeight.w500,
                                                            color: Colors.black,
                                                          ),
                                                          children: [
                                                            TextSpan(
                                                              text: controller
                                                                  .quantitySoldList[
                                                                      index]
                                                                  .toString(),
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      MyDimensions
                                                                              .FONT_SIZE_SPAN_SMALL *
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
                          )
                        ],
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
