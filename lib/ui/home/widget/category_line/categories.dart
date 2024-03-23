import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:e_commerce_app/constants/strings/app_strings.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late bool isSelect = false;
  final List<String> pCategory = [
    AppStrings.allCategory,
    AppStrings.hoodieCategory,
    AppStrings.jacketCategory,
    AppStrings.pantsCategory,
    AppStrings.tshirtCategory,
    AppStrings.shirtCategory,
    AppStrings.outwearCategory,
    AppStrings.accessoriesCategory
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pCategory.length,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {
              setState(() {
                isSelect = !isSelect;
              });
            },
            child: Text(
              pCategory[index],
              style: TextStyle(
                  color: isSelect
                      ? AppColor.priceColor
                      : AppColor.standartCategoryColor),
            ),
          );
        },
      ),
    );
  }
}
