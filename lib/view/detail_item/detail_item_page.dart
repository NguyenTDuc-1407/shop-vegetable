import 'package:flutter/material.dart';
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
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: MyDimensions.SPACE_SIZE_5X * 12,
                floating: true,
                pinned: true,
                flexibleSpace: Stack(
                  children: [
                    Container(
                      height: MyDimensions.SPACE_SIZE_5X * 12,
                      width: MyDimensions.mySize.width,
                      color: Colors.red,
                      child: Image.asset(
                        "assets/images/banner1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
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
                      borderRadius:
                          BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
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
                      height: MyDimensions.mySize.height * 0.5,
                      color: Colors.red,
                    ),
                    Container(
                      height: MyDimensions.mySize.height * 0.5,
                      color: Colors.blue,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
