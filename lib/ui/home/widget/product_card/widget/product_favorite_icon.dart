import 'package:flutter/material.dart';

class ProductFavoriteIcon extends StatefulWidget {
  late bool isClick = false;
  final Icon favIcon;
  final Icon outlinedFavIcon;
  ProductFavoriteIcon({
    super.key,
    required this.isClick,
    required this.favIcon,
    required this.outlinedFavIcon,
  });

  @override
  State<ProductFavoriteIcon> createState() => _ProductFavoriteIconState();
}

class _ProductFavoriteIconState extends State<ProductFavoriteIcon> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.isClick = !widget.isClick;
        });
      },
      child: widget.isClick ? widget.favIcon : widget.outlinedFavIcon,
    );
  }
}
