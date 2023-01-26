import 'package:e_sim_ui/widgets/custom_container.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_background.dart';
import '../widgets/my_custom_appbar.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyCustomAppBar(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(),
                      children: [
                        TextSpan(
                          text: 'Hi ',
                        ),
                        TextSpan(
                          text: 'Octavia,',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'This is your recent usage',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                //-----------------------------------------
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10,
                              ),
                            ),
                            color: Colors.blue.shade300,
                          ),
                          padding: const EdgeInsets.all(8),
                          child: Icon(
                            Icons.wallet,
                            color: Colors.blue.shade900,
                          ),
                        ),
                        Column(
                          children: const [
                            Text('Balance'),
                            Text('\$ 124.5'),
                          ],
                        ),
                        const Spacer(),
                        ElevatedButton(
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(0),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      10,
                                    ),
                                  ),
                                ),
                              )),
                          onPressed: () {},
                          child: const Text(
                            '+ Top Up Balance',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                //-------------------------------------------------
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              CustomContainer(
                                backgroundColor: Colors.green.shade100,
                                fontColor: Colors.green.shade600,
                                content: 'In Use',
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              CustomContainer(
                                  backgroundColor: Colors.blue.shade100,
                                  fontColor: Colors.blue.shade600,
                                  content: 'Internet'),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.green.shade300,
                                      Colors.green.shade200,
                                      Colors.green.shade100,
                                      Colors.green.shade50,
                                    ],
                                  ),
                                ),
                                child: Icon(
                                  Icons.cell_wifi_rounded,
                                  size: 30,
                                  color: Colors.blue.shade700,
                                ),
                              ),
                              Column(
                                children: const [
                                  Text('Data 5 GB'),
                                  Text('Weekly Plan'),
                                ],
                              ),
                            ],
                          ),
                          const Text('Active until'),
                          const Text('Feb 2, 2022'),
                        ],
                      
                      ),
                      //-----
                      Container(
                        child: '',
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}


