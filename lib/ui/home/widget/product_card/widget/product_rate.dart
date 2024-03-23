import 'package:flutter/material.dart';

class ProductRate extends StatelessWidget {
  final Icon rate;
  const ProductRate({
    super.key,
    required this.rate,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        rate,
        const Text("4.8"),
      ],
    );
  }
}
