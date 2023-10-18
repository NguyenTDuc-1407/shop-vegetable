import 'package:flutter/material.dart';
import 'package:shopvegetable/help/dimensions.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.teal,
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          children: [Text("sad"), Text("fsf")],
        ),
      ),
    );
  }
}
