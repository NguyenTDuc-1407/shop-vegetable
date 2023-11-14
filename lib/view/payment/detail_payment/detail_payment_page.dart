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
      builder: (DetailPaymentController controller) => Scaffold(
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
          child: Column(
            children: [
              Container(
                height: MyDimensions.SPACE_SIZE_5X,
                width: MyDimensions.SPACE_SIZE_5X,
                color: Colors.teal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
