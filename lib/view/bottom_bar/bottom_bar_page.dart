import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/view/bottom_bar/bottom_bar_controller.dart';

import '../../help/dimensions.dart';

class BottomBarPage extends GetView<BottomBarController> {
  const BottomBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BottomBarController(),
      builder: (BottomBarController controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() =>
            controller.pages[controller.currentIndex.value]['page'] as Widget),
        bottomNavigationBar: bottomNavigator(context),
      ),
    );
  }

  Widget onSelected(BuildContext context,
      {required String title, required String icon, required int index}) {
    return Material(
      child: GestureDetector(
        onTap: () => controller.onChangedPage(index),
        child: SizedBox(
          width: MyDimensions.mySize.width / controller.pages.length,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GetBuilder(
                builder: (BottomBarController controller) {
                  return Stack(
                    alignment: Alignment.topRight,
                    children: [
                      SizedBox(
                        height: MyDimensions.SPACE_SIZE_5X * 1.2,
                        width: MyDimensions.SPACE_SIZE_5X * 1.2,
                        child: Image.asset(
                          icon,
                          color: controller.currentIndex.value == index
                              ? const Color.fromRGBO(24, 138, 144, 1)
                              : const Color.fromARGB(255, 17, 17, 17),
                        ),
                      ),
                      Visibility(
                        visible: controller.pages[index]["checkNotifile"],
                        child: Container(
                          height: MyDimensions.SPACE_SIZE_4X * 0.88,
                          width: MyDimensions.SPACE_SIZE_4X * 0.88,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(
                            child: Text(
                              '99',
                              style: TextStyle(
                                fontSize:
                                    MyDimensions.FONT_SIZE_SPAN_SMALL_EXTRA,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
              Obx(
                () => Center(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: controller.currentIndex.value == index
                          ? const Color.fromRGBO(24, 138, 144, 1)
                          : Colors.black,
                      fontSize: MyDimensions.FONT_SIZE_SPAN,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomNavigator(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: MyDimensions.SPACE_SIZE_5X * 3,
        width: MyDimensions.mySize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(
              controller.pages.length,
              (index) {
                return Container(
                  child: onSelected(
                    context,
                    title: controller.pages[index]['label'].toString(),
                    icon: controller.pages[index]['icon'].toString(),
                    index: index,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
