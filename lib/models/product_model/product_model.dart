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

  ProductModel({
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
