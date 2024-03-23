import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:e_commerce_app/constants/strings/app_strings.dart';
import 'package:e_commerce_app/extension/sized_extension.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late bool isSelect;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              AppStrings.allCategory,
              style: TextStyle(color: AppColor.priceColor),
            ),
            10.w,
            const Text(AppStrings.hoodieCategory),
            10.w,
            const Text(AppStrings.jacketCategory),
            10.w,
            const Text(AppStrings.pantsCategory),
            10.w,
            const Text(AppStrings.tshirtCategory),
            10.w,
            const Text(AppStrings.shirtCategory),
            10.w,
            const Text(AppStrings.outwearCategory),
            10.w,
            const Text(AppStrings.accessoriesCategory),
          ],
        ),
      ),
    );
  }
}
