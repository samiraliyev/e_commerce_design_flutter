import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.generate(
        5,
        (index) => const BottomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
      ),
    );
  }
}
