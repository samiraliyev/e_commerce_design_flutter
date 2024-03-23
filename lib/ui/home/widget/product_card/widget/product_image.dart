import 'package:e_commerce_app/ui/home/widget/product_card/widget/product_favorite_icon.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/color/app_color.dart';

class ProductImage extends StatefulWidget {
  const ProductImage({
    super.key,
    required this.productImageUrl,
    required this.favIcon,
    required this.outlinedFavIcon,
  });
  final String productImageUrl;
  final Icon favIcon;
  final Icon outlinedFavIcon;

  @override
  State<ProductImage> createState() => _ProductImageState();
}

class _ProductImageState extends State<ProductImage> {
  late bool isClick = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.cardBg,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Container(
              width: 200.0,
              height: 180.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.productImageUrl),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            right: 20.0,
            child: ProductFavoriteIcon(
              favIcon: widget.favIcon,
              outlinedFavIcon: widget.outlinedFavIcon,
            ),
          ),
        ],
      ),
    );
  }
}
