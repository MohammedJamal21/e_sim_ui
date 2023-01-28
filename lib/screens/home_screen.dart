import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../widgets/custom_background.dart';
import '../widgets/custom_container.dart';
import '../widgets/my_custom_appbar.dart';

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final Gradient gradient;

  const GradientIcon({
    super.key,
    required this.icon,
    required this.size,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size,
        height: size,
        child: Icon(
          icon,
          size: size,
          color: Colors.white,
        ),
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);
        return gradient.createShader(rect);
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return CustomBackground(
      screenSize: screenSize,
      scaffold: Scaffold(
        body: Padding(
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              content: 'Internet',
                            ),
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
                    //const Spacer(),
                    //-----
                    Container(
                      child: CircularPercentIndicator(
                        circularStrokeCap: CircularStrokeCap.round,
                        backgroundColor: Colors.grey.shade300,
                        radius: 60,
                        lineWidth: 13,
                        percent: 0.65,
                        linearGradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.blue.shade800, Colors.blue.shade200],
                        ),
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              '3.5 GB',
                            ),
                            Text(
                              '/ 5 GB',
                            ),
                          ],
                        ),
                      ), //Lera kotayman haw
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //--------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Popular Plan'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
              //--------
              SizedBox(
                width: double.infinity,
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    //----------------------------------Custom Container
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
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
                          const Text('Internet 5 GB'),
                          const Text('1 Week'),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('\$ 11.00'),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //-------------- end of Custom Container
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 200,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
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
                          const Text('Internet 5 GB'),
                          const Text('1 Week'),
                          SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('\$ 11.00'),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //--------------
                  ],
                ),
              ),
            ],
          ),
        ),
        extendBody: true,
        bottomNavigationBar: DotNavigationBar(
          borderRadius: 20,
          marginR: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 25,
          ),
          dotIndicatorColor: Colors.white,
          currentIndex: 0,
          onTap: (p0) {},
          items: [
            DotNavigationBarItem(
              icon: const GradientIcon(
                icon: Icons.home,
                size: 25,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 5, 134, 240),
                    Colors.blue,
                    Colors.white,
                  ],
                ),
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.grey.shade500,
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.wallet_giftcard_rounded,
                color: Colors.grey.shade500,
              ),
            ),
            DotNavigationBarItem(
              icon: Icon(
                Icons.apps_rounded,
                color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
