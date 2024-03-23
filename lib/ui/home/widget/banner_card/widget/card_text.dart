// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardText extends StatelessWidget {
  const CardText({
    super.key,
    required this.description,
  });
  final String description;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        description,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          fontWeight: FontWeight.w500,
        ),
        maxLines: 5,
      ),
    );
  }
}
