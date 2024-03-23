// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:e_commerce_app/constants/path/app_path.dart';
import 'package:e_commerce_app/constants/strings/app_strings.dart';
import 'package:flutter/material.dart';

class TopCardModel {
  final String description;
  final String img;
  final Color color;
  final String shopText;

  TopCardModel({
    required this.description,
    required this.img,
    required this.color,
    required this.shopText,
  });

  static List<TopCardModel> topModel = [
    TopCardModel(
      description: AppStrings.cardDescription1,
      img: AppPath.cardImage1,
      color: AppColor.topCardColor1,
      shopText: AppStrings.cardButton,
    ),
    TopCardModel(
      description: AppStrings.cardDescription2,
      img: AppPath.cardImage2,
      color: AppColor.topCardColor2,
      shopText: AppStrings.cardButton,
    )
  ];
}
