// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shopvegetable/help/dimensions.dart';

class NoneInternet extends StatelessWidget {
  const NoneInternet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:
                EdgeInsets.symmetric(horizontal: MyDimensions.SPACE_SIZE_2X),
            height: MyDimensions.SPACE_SIZE_5X * 12,
            width: MyDimensions.mySize.width,
            color: Colors.teal,
            child: Center(
              child: Text(
                "Không có kết nối internet",
                style: TextStyle(fontSize: MyDimensions.FONT_SIZE_H1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
