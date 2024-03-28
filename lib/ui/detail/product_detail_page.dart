import 'package:e_commerce_app/constants/path/app_path.dart';
import 'package:e_commerce_app/extension/sized_extension.dart';
import 'package:e_commerce_app/models/product_model/product_model.dart';
import 'package:flutter/material.dart';

import '../../constants/color/app_color.dart';
import '../../constants/strings/app_strings.dart';
import '../home/widget/app_bar/detail_page_app_bar.dart';
import '../home/widget/product_card/widget/product_title.dart';
import '../shop/shop.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({
    super.key,
  });

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  bool addFavorite = false;
  bool selectSize = false;
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70.0), child: DetailPageAppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(color: AppColor.inputColor),
                      child: Image.asset(ProductModel
                          .pModel[selectedImage].imgUrl[selectedImage]),
                    ),
                  ),
                ),
              ),
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(ProductModel.pModel.length,
                      (index) => buildSmallProductView(index))
                ],
              ),
              20.h,
              Container(
                width: 70.0,
                height: 30.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: AppColor.priceColor),
                child: const Text(
                  AppStrings.hoodieCategory,
                  style: TextStyle(
                    color: AppColor.white,
                  ),
                ),
              ),
              10.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const ProductTitle(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          addFavorite = !addFavorite;
                        });
                      },
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: AppColor.inputColor),
                        child: addFavorite
                            ? AppPath.favIcon
                            : AppPath.outlinedFavIcon,
                      ),
                    )
                  ],
                ),
              ),
              10.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppPath.rate,
                      Text(
                        AppStrings.rateNum,
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(AppStrings.review)
                    ],
                  ),
                  Container(
                    width: 3.0,
                    height: 30.0,
                    color: AppColor.inputColor,
                  ),
                  const Row(
                    children: [
                      Text(
                        AppStrings.purchased,
                      ),
                    ],
                  ),
                  Container(
                    width: 3.0,
                    height: 30.0,
                    color: AppColor.inputColor,
                  ),
                  const Row(
                    children: [Text(AppStrings.stock)],
                  )
                ],
              ),
              20.h,
              const Text(
                AppStrings.size,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0),
              ),
              15.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selectSize = !selectSize;
                      });
                    },
                    child: Container(
                        alignment: Alignment.center,
                        width: 70.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                            color: selectSize
                                ? AppColor.priceColor
                                : AppColor.inputColor,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          AppStrings.sSize,
                          style: TextStyle(
                              color: selectSize
                                  ? AppColor.white
                                  : AppColor.standartCategoryColor),
                        )),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: AppColor.inputColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(AppStrings.mSize)),
                  Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: AppColor.inputColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(AppStrings.lSize)),
                  Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: AppColor.inputColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(AppStrings.xlSize)),
                  Container(
                      alignment: Alignment.center,
                      width: 70.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          color: AppColor.inputColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text(AppStrings.xlSize))
                ],
              ),
              20.h,
              const Text(
                AppStrings.descriptionProductTitle,
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              15.h,
              const Text(
                AppStrings.descProduct,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              20.h,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppStrings.titlePrice),
                      Text(
                        AppStrings.price,
                        style: TextStyle(
                            color: AppColor.priceColor, fontSize: 22.0),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Shop(),
                          ));
                    },
                    child: Row(
                      children: [
                        Container(
                            width: 70.0,
                            height: 50,
                            decoration: const BoxDecoration(
                              color: AppColor.priceColor,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0)),
                            ),
                            child: AppPath.basket),
                        Container(
                          width: 150.0,
                          height: 50.0,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: AppColor.navbarBg,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0)),
                          ),
                          child: const Text(
                            AppStrings.buy,
                            style: TextStyle(
                                color: AppColor.white, fontSize: 20.0),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
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
        height: 60.0,
        width: 80.0,
        decoration: BoxDecoration(
          color: AppColor.inputColor,
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: selectedImage == index
                ? AppColor.priceColor
                : AppColor.inputColor,
          ),
        ),
        child: Image.asset(ProductModel.pModel[selectedImage].imgUrl[index]),
      ),
    );
  }
}
