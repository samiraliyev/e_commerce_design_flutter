import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  final String category;
  const ProductCategory({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0,
      height: 25.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: AppColor.priceColor,
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.justify,
          category,
          style: const TextStyle(color: AppColor.bgColor),
        ),
      ),
    );
  }
}
