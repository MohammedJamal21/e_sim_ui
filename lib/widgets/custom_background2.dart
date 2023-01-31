import 'package:flutter/material.dart';

class CustomBackground2 extends StatelessWidget {
  final Size screenSize;
  final Scaffold scaffold;

  const CustomBackground2({
    Key? key,
    required this.screenSize,
    required this.scaffold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: screenSize.height * 0.5,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF3d6fd2),
                      Color(0xFF3d6fd2),
                      Color(0xFF69a7df),
                      Color(0xFF91c4cc),
                      Color(0xFFc7ebb1),
                    ],
                  ),
                ),
              ),
              Container(
                height: screenSize.height * 0.5,
                color: Colors.grey.shade200,
              ),
            ],
          ),
          scaffold,
        ],
      ),
    );
  }
}
