// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:e_commerce_app/ui/home/widget/banner_card/widget/card_items.dart';

import '../../../../models/card_model/top_card_model.dart';

class CardPageViewBuilder extends StatefulWidget {
  const CardPageViewBuilder({
    super.key,
  });
  @override
  State<CardPageViewBuilder> createState() => _CardPageViewBuilderState();
}

class _CardPageViewBuilderState extends State<CardPageViewBuilder> {
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
    List<TopCardModel> topModel = TopCardModel.topModel;
    return Row(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            itemCount: topModel.length,
            itemBuilder: (context, index) {
              final datas = topModel[index];
              return CardItems(
                color: datas.color,
                image: datas.img,
                description: datas.description,
              );
            },
          ),
        )
      ],
    );
  }
}
