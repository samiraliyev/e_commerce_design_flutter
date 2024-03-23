// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce_app/extension/sized_extension.dart';

import 'card_img.dart';
import 'card_shop_text.dart';
import 'card_text.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    super.key,
    required this.color,
    required this.description,
    required this.image,
  });

  final Color color;
  final String description;
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardText(
                    description: description,
                  ),
                  const CardShopText(),
                  20.h,
                ],
              ),
              Expanded(
                  child: CardImg(
                image: image,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
