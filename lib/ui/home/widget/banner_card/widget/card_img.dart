import 'package:flutter/material.dart';

class CardImg extends StatelessWidget {
  const CardImg({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Image.asset(image));
  }
}
