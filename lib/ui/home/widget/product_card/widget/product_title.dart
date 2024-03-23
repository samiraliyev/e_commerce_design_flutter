import 'package:e_commerce_app/constants/strings/app_strings.dart';
import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      AppStrings.hoodieCategoryTitle,
      maxLines: 2,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 12.0,
      ),
    );
  }
}
