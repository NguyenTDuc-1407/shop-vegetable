// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/search_item/search_item_controller.dart';

import '../../help/dimensions.dart';

class SearchItemPage extends GetView {
  const SearchItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SreachItemController(),
      builder: (SreachItemController controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          // search
          appBar: Appbar(),
          // list type item
          body: listItem(controller),
        ),
      ),
    );
  }

  Container listItem(SreachItemController controller) {
    return Container(
      margin: EdgeInsets.only(
        top: MyDimensions.SPACE_SIZE_1X,
        left: MyDimensions.SPACE_SIZE_2X,
        right: MyDimensions.SPACE_SIZE_2X,
      ),
      child: GridView(
        padding: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_5X),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (MyDimensions.ONE_UNIT_SIZE *
              1.2 /
              MyDimensions.SPACE_SIZE_1X *
              6.8),
          crossAxisSpacing: MyDimensions.SPACE_SIZE_1X,
          mainAxisSpacing: MyDimensions.SPACE_SIZE_1X,
        ),
        children: [
          ...List.generate(
            controller.homeItem.length,
            (index) => InkWell(
              onTap: () {
                controller.onDeitailTpeItem(index);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(MyDimensions.BORDER_RADIUS_4X),
                  color: controller.homeItem[index]["color"],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // image item
                    imageItem(controller, index),
                    // name item
                    titleItem(controller, index),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container titleItem(SreachItemController controller, int index) {
    return Container(
      margin: EdgeInsets.only(
        left: MyDimensions.SPACE_SIZE_5X,
        right: MyDimensions.SPACE_SIZE_5X,
        top: MyDimensions.SPACE_SIZE_1X,
      ),
      child: Text(
        controller.homeItem[index]["title"],
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: MyDimensions.FONT_SIZE_H6,
        ),
      ),
    );
  }

  SizedBox imageItem(SreachItemController controller, int index) {
    return SizedBox(
      height: MyDimensions.SPACE_SIZE_5X * 5,
      width: MyDimensions.SPACE_SIZE_5X * 5,
      child: Image.asset(
        controller.homeItem[index]["image"],
      ),
    );
  }

  AppBar Appbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Container(
        width: double.infinity,
        height: MyDimensions.SPACE_SIZE_5X * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_2X),
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
    );
  }
}
