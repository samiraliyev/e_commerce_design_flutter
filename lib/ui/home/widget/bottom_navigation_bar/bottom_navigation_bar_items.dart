import 'package:e_commerce_app/constants/color/app_color.dart';
import 'package:e_commerce_app/constants/path/app_path.dart';
import 'package:flutter/material.dart';

import '../../../../constants/strings/app_strings.dart';
// import '../../../detail/product_detail_page.dart';
// import '../../home_view.dart';

class BottomNavigationBarItems extends StatefulWidget {
  const BottomNavigationBarItems({super.key});

  @override
  State<BottomNavigationBarItems> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<BottomNavigationBarItems> {
  int currentPageIndex = 0;

// page of the navigation bar
  // final List _pages = [
  //   const HomeView(),
  //   const ProductDetailPage(),
  // ];
  void _changeTab(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 90.0,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Theme(
          data: ThemeData(
            canvasColor: AppColor.navbarBg,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: BottomNavigationBar(

                // when navbar item ic clicked , then change effect type
                type: BottomNavigationBarType.shifting,
                onTap: (index) => _changeTab(index),
                currentIndex: currentPageIndex,
                selectedItemColor: AppColor.priceColor,
                unselectedItemColor: AppColor.white,
                showUnselectedLabels: true,
                items: const [
                  BottomNavigationBarItem(
                    icon: AppPath.navHome,
                    label: AppStrings.bottomNavBarHome,
                  ),
                  BottomNavigationBarItem(
                    icon: AppPath.navDiscovery,
                    label: AppStrings.bottomNavBarDiscover,
                  ),
                  BottomNavigationBarItem(
                    icon: AppPath.navWishList,
                    label: AppStrings.bottomNavBarWishList,
                  ),
                  BottomNavigationBarItem(
                    icon: AppPath.navMessages,
                    label: AppStrings.bottomNavBarMessage,
                  ),
                  BottomNavigationBarItem(
                      icon: AppPath.navProfile,
                      label: AppStrings.bottomNavBarProfile)
                ]),
          ),
        ),
      ),
    );
  }
}
