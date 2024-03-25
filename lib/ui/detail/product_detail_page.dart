// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce_app/models/product_model/product_model.dart';

import '../../constants/color/app_color.dart';
import '../home/widget/app_bar/detail_page_app_bar.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
    required this.pModel,
  });
  final ProductModel pModel;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: DetailPageAppBar()),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.pModel.imageUrl[selectedImage]),
            ),
          ),
          Row(
            children: [
              ...List.generate(widget.pModel.imageUrl.length,
                  (index) => buildSmallProductView(index))
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildSmallProductView(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10.0),
        padding: const EdgeInsets.all(8.0),
        height: 48.0,
        width: 48.0,
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: selectedImage == index
                ? AppColor.priceColor
                : AppColor.inputColor,
          ),
        ),
        child: Image.asset(widget.pModel.imageUrl[0]),
      ),
    );
  }
}