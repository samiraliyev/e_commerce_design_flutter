import 'package:flutter/material.dart';

import '../../../../../constants/strings/app_strings.dart';

class CardShopText extends StatelessWidget {
  const CardShopText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 30.0,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(
          16.0,
        ),
      ),
      child: const Center(
        child: Text(
          AppStrings.cardButton,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
