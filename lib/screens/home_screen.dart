import 'package:flutter/material.dart';

import '../widgets/custom_background.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          CustomBackground(
            screenSize: screenSize,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 50, 25, 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(
                        8,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        color: Colors.black26,
                      ),
                      child: const Text(
                        'E-sim',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ),
                    DropdownButton(
                      underline: Container(),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            '+481234567890',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white60,
                            ),
                          ),
                        )
                      ],
                      onChanged: null,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
