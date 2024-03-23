import 'package:e_commerce_app/models/product_model/product_model.dart';
import 'package:e_commerce_app/ui/home/widget/product_card/product_card_item.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatefulWidget {
  const ProductGridView({super.key});

  @override
  State<ProductGridView> createState() => _ProductGridViewState();
}

class _ProductGridViewState extends State<ProductGridView> {
  late PageController _pageController;
  final int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.83,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<ProductModel> pModel = ProductModel.pModel;
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 360.0,
        ),
        itemCount: pModel.length,
        itemBuilder: (context, index) {
          final items = pModel[index];
          return ProductCardItem(
            outFavIcon: items.outFavIcon,
            category: items.category,
            favIcon: items.favIcon,
            imageUrl: items.imageUrl,
            price: items.price,
            rate: items.rateIcon,
            title: items.title,
          );
        },
      ),
    );
  }
}
