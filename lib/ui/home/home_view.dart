import 'package:e_commerce_app/extension/sized_extension.dart';
import 'package:e_commerce_app/ui/home/widget/category_line/categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widget/app_bar/home_app_bar.dart';
import 'widget/banner_card/card_page_view_builder.dart';
import 'widget/bottom_navigation_bar/bottom_navigation_bar_items.dart';
import 'widget/product_card/product_grid_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(80.0), child: HomeAppBar()),
      body: SizedBox(
        child: ListView(
          children: [
            const SizedBox(
              height: 200.0,
              child: CardPageViewBuilder(),
            ),
            10.h,
            const Categories(),
            10.h,
            const ProductGridView(),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
            height: 90,
            padding: const EdgeInsets.all(14.0),
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.transparent),
            child: const BottomNavigationBarItems()),
      ),
    );
  }
}
