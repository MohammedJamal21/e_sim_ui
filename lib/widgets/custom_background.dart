import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Size screenSize;

  const CustomBackground({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: screenSize.height / 2,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF3d6fd2),
                Color(0xFF69a7df),
                Color(0xFF91c4cc),
                Color(0xFFc7ebb1),
              ],
            ),
          ),
        ),
        Container(
          height: screenSize.height / 2,
          color: Colors.white,
        ),
      ],
    );
  }
}
