import 'package:flutter/material.dart';

import '../../constants/color/app_color.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("Aldiqlarin"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.teal,
        alignment: Alignment.center,
        child: const Text(
          "Mubarekdi !!!",
          style: TextStyle(
            color: AppColor.white,
            fontSize: 34.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
