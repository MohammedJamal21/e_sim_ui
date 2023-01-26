import 'package:flutter/material.dart';

class NotificationButton extends StatelessWidget {
  const NotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_rounded,
            color: Colors.white,
          ),
        ),
        const Positioned(
          right: 11,
          top: 11,
          child: CircleAvatar(
            maxRadius: 3,
            backgroundColor: Color(0xFFc7ebb1),
          ),
        )
      ],
    );
  }
}
