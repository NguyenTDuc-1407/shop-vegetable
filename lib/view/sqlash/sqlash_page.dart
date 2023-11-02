import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopvegetable/help/dimensions.dart';
import 'package:shopvegetable/view/sqlash/sqlash_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SqlashPage extends StatelessWidget {
  const SqlashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SqlashController(),
      builder: (SqlashController controller) => Scaffold(
        body: PageView.builder(
          itemCount: controller.sqLash.length,
          onPageChanged: (value) => controller.onPageImage(value),
          controller: controller.pageController,
          itemBuilder: (context, index) => Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(),
              ),
              // image sqlash
              imageSqlash(controller, index),
              // text and button
              contentAndButton(controller, index),
            ],
          ),
        ),
      ),
    );
  }

  Expanded contentAndButton(SqlashController controller, int index) {
    return Expanded(
      flex: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              // text title
              titleSqlash(controller, index),
              // text conext
              contextSqlash(controller, index),
            ],
          ),
          SizedBox(
            height: MyDimensions.SPACE_SIZE_5X * 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // dot image sqlash
                dotImage(controller),
                // button next image sqlash
                button(controller, index),
              ],
            ),
          ),
        ],
      ),
    );
  }

  InkWell button(SqlashController controller, int index) {
    return InkWell(
      onTap: () {
        controller.onNext();
      },
      child: Container(
        height: MyDimensions.SPACE_SIZE_5X * 2.5,
        width: MyDimensions.mySize.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MyDimensions.BORDER_RADIUS_7X),
            color: Colors.purple),
        child: Center(
          child: Text(
            controller.sqLash[index]["buton"].toString(),
            style: TextStyle(
                color: Colors.white, fontSize: MyDimensions.FONT_SIZE_H5),
          ),
        ),
      ),
    );
  }

  SmoothPageIndicator dotImage(SqlashController controller) {
    return SmoothPageIndicator(
      controller: controller.pageController,
      count: controller.sqLash.length,
      effect: ExpandingDotsEffect(
        radius: MyDimensions.SPACE_SIZE_5X * 3,
        dotWidth: MyDimensions.SPACE_SIZE_3X,
        dotHeight: MyDimensions.SPACE_SIZE_3X,
        dotColor: Colors.grey,
        activeDotColor: Colors.purple,
      ),
      onDotClicked: (index) {},
    );
  }

  Container contextSqlash(SqlashController controller, int index) {
    return Container(
      margin: EdgeInsets.only(
          right: MyDimensions.SPACE_SIZE_5X * 2,
          left: MyDimensions.SPACE_SIZE_5X * 2,
          top: MyDimensions.SPACE_SIZE_5X),
      child: Text(
        controller.sqLash[index]["context"].toString(),
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H1),
      ),
    );
  }

  Container titleSqlash(SqlashController controller, int index) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MyDimensions.SPACE_SIZE_5X * 2,
      ),
      child: Text(
        controller.sqLash[index]["title"].toString(),
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.purple, fontSize: MyDimensions.FONT_SIZE_H1 * 2),
      ),
    );
  }

  Expanded imageSqlash(SqlashController controller, int index) {
    return Expanded(
      flex: 3,
      child: Image.asset(
        controller.sqLash[index]["image"].toString(),
      ),
    );
  }
}
