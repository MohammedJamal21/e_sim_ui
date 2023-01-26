import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color fontColor;
  final String content;

  const CustomContainer({
    super.key,
    required this.backgroundColor,
    required this.fontColor,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        8,
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: backgroundColor,
      ),
      child: Text(
        content,
        style: TextStyle(
          color: fontColor,
        ),
      ),
    );
  }
}
