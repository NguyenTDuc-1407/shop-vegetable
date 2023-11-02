import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/utils/image_path.dart';
import 'package:shopvegetable/utils/text_app.dart';
import 'package:shopvegetable/view/search_item/detail_type_item/detail_type_item_controller.dart';

import '../../../help/dimensions.dart';

class DetailTypeItemPage extends GetView {
  const DetailTypeItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: DetailTypeItemConotroller(),
      builder: (DetailTypeItemConotroller controller) => GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          // app bar
          appBar: appbar(controller),
          // list item
          body: listItem(controller),
        ),
      ),
    );
  }

  Column listItem(DetailTypeItemConotroller controller) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: MyDimensions.SPACE_SIZE_2X,
              right: MyDimensions.SPACE_SIZE_2X),
          height: MyDimensions.SPACE_SIZE_5X * 1.5,
          child: Text(
            controller.title,
            style: TextStyle(
              fontSize: MyDimensions.FONT_SIZE_H3,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(
                top: MyDimensions.SPACE_SIZE_1X,
                left: MyDimensions.SPACE_SIZE_2X,
                right: MyDimensions.SPACE_SIZE_2X),
            child: GridView(
              padding: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_5X),
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
                  controller.homeItem2.length,
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
                          // image item
                          imageItem(controller, index),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: MyDimensions.SPACE_SIZE_1X),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // name item
                                  titleItem(controller, index),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: MyDimensions.SPACE_SIZE_1X,
                                        bottom: MyDimensions.SPACE_SIZE_1X),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // price item
                                        priceItem(controller, index),
                                        // số lượng đã bán
                                        quantitySoldList(controller, index),
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
      ],
    );
  }

  Expanded quantitySoldList(DetailTypeItemConotroller controller, int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: MyDimensions.SPACE_SIZE_5X),
        child: RichText(
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: TextApp.daBan,
            style: TextStyle(
              fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL * 0.75,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: controller.quantitySoldList[index].toString(),
                style: TextStyle(
                    fontSize: MyDimensions.FONT_SIZE_SPAN_SMALL * 0.75,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text priceItem(DetailTypeItemConotroller controller, int index) {
    return Text(
      controller.homeItem2[index]["price"],
      style: TextStyle(
          fontSize: MyDimensions.FONT_SIZE_SPAN,
          fontWeight: FontWeight.w500,
          color: Colors.teal),
    );
  }

  Text titleItem(DetailTypeItemConotroller controller, int index) {
    return Text(
      controller.homeItem2[index]["title"],
      style: TextStyle(
          fontSize: MyDimensions.FONT_SIZE_SPAN, fontWeight: FontWeight.w500),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
    );
  }

  Container imageItem(DetailTypeItemConotroller controller, int index) {
    return Container(
      margin: EdgeInsets.only(bottom: MyDimensions.SPACE_SIZE_1X),
      height: MyDimensions.SPACE_SIZE_5X * 5.5,
      child: Image.asset(
        controller.homeItem2[index]["image"],
        fit: BoxFit.cover,
      ),
    );
  }

  AppBar appbar(DetailTypeItemConotroller controller) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
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
    );
  }
}
