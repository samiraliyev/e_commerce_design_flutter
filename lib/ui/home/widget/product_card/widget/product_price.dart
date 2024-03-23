import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  final String price;
  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: const TextStyle(color: AppColor.priceColor, fontSize: 18.0),
    );
  }
}
