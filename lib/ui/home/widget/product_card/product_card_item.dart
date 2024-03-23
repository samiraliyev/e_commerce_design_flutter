import 'package:e_commerce_app/extension/sized_extension.dart';
import 'package:e_commerce_app/ui/home/widget/product_card/widget/product_image.dart';
import 'package:flutter/material.dart';

import 'widget/product_category.dart';
import 'widget/product_price.dart';
import 'widget/product_rate.dart';
import 'widget/product_title.dart';

class ProductCardItem extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final Icon rate;
  final String price;
  final Icon favIcon;
  final Icon outFavIcon;

  const ProductCardItem({
    super.key,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.rate,
    required this.price,
    required this.favIcon,
    required this.outFavIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Expanded(
        child: Card(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImage(
              outlinedFavIcon: outFavIcon,
              favIcon: favIcon,
              productImageUrl: imageUrl,
            ),
            5.h,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductCategory(
                    category: category,
                  ),
                  10.h,
                  const ProductTitle(),
                  20.h,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProductRate(
                        rate: rate,
                      ),
                      ProductPrice(
                        price: price.toString(),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
