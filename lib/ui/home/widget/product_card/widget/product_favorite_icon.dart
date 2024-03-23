import 'package:flutter/material.dart';

class ProductFavoriteIcon extends StatefulWidget {
  final Icon favIcon;
  final Icon outlinedFavIcon;
  const ProductFavoriteIcon({
    super.key,
    required this.favIcon,
    required this.outlinedFavIcon,
  });

  @override
  State<ProductFavoriteIcon> createState() => _ProductFavoriteIconState();
}

class _ProductFavoriteIconState extends State<ProductFavoriteIcon> {
  late bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClick = !isClick;
        });
      },
      child: isClick ? widget.favIcon : widget.outlinedFavIcon,
    );
  }
}
