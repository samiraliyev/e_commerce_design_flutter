import 'package:e_commerce_app/constants/path/app_path.dart';
import 'package:e_commerce_app/constants/strings/app_strings.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final String imageUrl;
  final String category;
  final String title;
  final double rate;
  final Icon rateIcon;
  final String price;
  final Icon favIcon;
  final Icon outFavIcon;

  final List<String> imgUrl;

  ProductModel({
    required this.imgUrl,
    required this.outFavIcon,
    required this.favIcon,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.rate,
    required this.rateIcon,
    required this.price,
  });

  static List<ProductModel> pModel = [
    ProductModel(
      imgUrl: [
        AppStrings.hoodieDetail1,
        AppStrings.hoodieDetail2,
        AppStrings.hoodieDetail3,
        AppStrings.hoodieDetail4,
      ],
      outFavIcon: AppPath.outlinedFavIcon,
      favIcon: AppPath.favIcon,
      imageUrl: AppPath.hoodieImageUrl,
      category: AppStrings.hoodieCategory,
      title: AppStrings.hoodieCategoryTitle,
      rate: .2,
      rateIcon: AppPath.rate,
      price: AppStrings.price,
    ),
    ProductModel(
      imgUrl: [
        AppStrings.tshirtDetail1,
        AppStrings.tshirtDetail2,
        AppStrings.tshirtDetail3,
        AppStrings.tshirtDetail4,
      ],
      outFavIcon: AppPath.outlinedFavIcon,
      rateIcon: AppPath.rate,
      favIcon: AppPath.favIcon,
      imageUrl: AppPath.tshirtImageUrl,
      category: AppStrings.tshirtCategory,
      title: AppStrings.hoodieCategoryTitle,
      rate: 4.5,
      price: AppStrings.price,
    ),
    ProductModel(
      imgUrl: [
        AppStrings.pantsDetail1,
        AppStrings.pantsDetail2,
        AppStrings.pantsDetail3,
        AppStrings.pantsDetail4,
      ],
      outFavIcon: AppPath.outlinedFavIcon,
      rateIcon: AppPath.rate,
      favIcon: AppPath.favIcon,
      imageUrl: AppPath.trousersImageUrl,
      category: AppStrings.pantsCategory,
      title: AppStrings.hoodieCategoryTitle,
      rate: 9.5,
      price: AppStrings.price,
    ),
    ProductModel(
        imgUrl: [
          AppStrings.montDetail1,
          AppStrings.montDetail2,
          AppStrings.montDetail3,
          AppStrings.montDetail4,
        ],
        outFavIcon: AppPath.outlinedFavIcon,
        rateIcon: AppPath.rate,
        favIcon: AppPath.favIcon,
        imageUrl: AppPath.montImageUrl,
        category: AppStrings.montCategory,
        title: AppStrings.hoodieCategoryTitle,
        rate: 7.5,
        price: AppStrings.price),
  ];
}
