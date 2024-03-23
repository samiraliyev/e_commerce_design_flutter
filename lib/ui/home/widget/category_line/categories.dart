import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:e_commerce_app/constants/strings/app_strings.dart';
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
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.allCategory,
                  style: TextStyle(color: AppColor.priceColor)),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.hoodieCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.jacketCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.pantsCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.tshirtCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.shirtCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.outwearCategory),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(AppStrings.accessoriesCategory),
            ),
          ],
        ),
      ),
    );
  }
}
