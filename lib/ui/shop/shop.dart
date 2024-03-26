import 'package:flutter/material.dart';

import '../../constants/color/app_color.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
