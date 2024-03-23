import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:flutter/material.dart';

class AppPath {
  AppPath._();
  static const String cardImage1 = "assets/images/cimage.png";
  static const String cardImage2 = "assets/images/glasses.png";
  static const String hoodieImageUrl = "assets/images/hoodie.png";
  static const String tshirtImageUrl = "assets/images/tshirt.png";
  static const String trousersImageUrl = "assets/images/trousers.png";
  static const String montImageUrl = "assets/images/mont.png";

  static const Icon rate = Icon(Icons.star, color: Colors.yellow);
  static const Icon favIcon =
      Icon(Icons.favorite, color: AppColor.favIconColor);

  static const Icon outlinedFavIcon = Icon(Icons.favorite_border_outlined);
}
