import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'notification_button.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomContainer(
          backgroundColor: Colors.white12,
          fontColor: Colors.white,
          content: 'E-sim',
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: DropdownButton(
            iconDisabledColor: Colors.white,
            underline: Container(),
            icon: const Icon(
              Icons.keyboard_arrow_down_outlined,
              size: 18,
            ),
            items: const [
              DropdownMenuItem(
                child: Text(
                  '+481234567890 ',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              )
            ],
            onChanged: null,
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(
            right: 10,
          ),
          child: NotificationButton(),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/DanaAli.jpg'),
        ),
      ],
    );
  }
}
