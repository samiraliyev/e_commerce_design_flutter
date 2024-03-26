import 'package:e_commerce_app/extension/sized_extension.dart';
import 'package:flutter/material.dart';

import '../../../../constants/path/app_path.dart';
import '../../../../constants/strings/app_strings.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: const Text(
        AppStrings.detailAppText,
      ),
      actions: [
        Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade200),
            child: AppPath.share),
        20.w,
        Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.grey.shade200),
            child: AppPath.navMessages),
      ],
    );
  }
}
