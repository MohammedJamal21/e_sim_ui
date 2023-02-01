import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:tab_container/tab_container.dart';

import '../widgets/custom_container.dart';

class UsageScreen extends StatelessWidget {
  static const routeName = '/usage';

  UsageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Usage History',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Center(
              child: Container(
                height: 35,
                width: 115,
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      10,
                    ),
                  ),
                  border: Border.all(
                    color: Colors.grey.shade400,
                  ),
                ),
                child: DropdownButton(
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.black,
                  ),
                  underline: Container(),
                  items: const [
                    DropdownMenuItem(
                      child: Text(
                        '6 Month  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                  onChanged: null,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: TabContainer(
                    isStringTabs: false,
                    radius: 20,
                    tabEdge: TabEdge.bottom,
                    tabCurve: Curves.easeIn,
                    transitionBuilder: (child, animation) {
                      animation = CurvedAnimation(
                          curve: Curves.easeIn, parent: animation);
                      return SlideTransition(
                        position: Tween(
                          begin: const Offset(0.2, 0.0),
                          end: const Offset(0.0, 0.0),
                        ).animate(animation),
                        child: FadeTransition(
                          opacity: animation,
                          child: child,
                        ),
                      );
                    },
                    colors: const <Color>[
                      Colors.white,
                      Color(0xffa275e3),
                      Color(0xff9aebed),
                    ],
                    tabs: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
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
                                size: 20,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '164.2 GB',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 225, 239, 63),
                                    Color.fromARGB(255, 239, 245, 74),
                                    Color.fromARGB(255, 212, 227, 151),
                                    Color.fromARGB(255, 212, 222, 173),
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.call,
                                size: 20,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Call',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '32 Min',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.blue.shade300,
                                    Colors.blue.shade200,
                                    Colors.blue.shade100,
                                  ],
                                ),
                              ),
                              child: Icon(
                                Icons.message_rounded,
                                size: 20,
                                color: Colors.blue.shade700,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'SMS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '21 SMS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: LineChart(
                          LineChartData(
                            minX: 0,
                            maxX: 11,
                            minY: 0,
                            maxY: 6,
                            titlesData: FlTitlesData(
                              show: true,
                              rightTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              topTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: false,
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 50,
                                  getTitlesWidget: (value, meta) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return const Text(
                                          '0 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 1:
                                        return const Text(
                                          '1 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 2:
                                        return const Text(
                                          '2 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 3:
                                        return const Text(
                                          '3 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 4:
                                        return const Text(
                                          '4 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 5:
                                        return const Text(
                                          '5 GB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 6:
                                        return const Text('');
                                      default:
                                        return const Text('');
                                    }
                                  },
                                ),
                              ),
                              bottomTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  getTitlesWidget: (value, meta) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return const Text('');
                                      case 2:
                                        return const Text('');
                                      case 4:
                                        return const Text('');
                                      case 6:
                                      case 8:
                                      case 10:
                                        return const Text('');
                                      case 1:
                                        return const Text(
                                          'JAN',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );

                                      case 3:
                                        return const Text(
                                          'FEB',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 5:
                                        return const Text(
                                          'MAR',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 7:
                                        return const Text(
                                          'APR',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 9:
                                        return const Text(
                                          'MAY',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                      case 11:
                                        return const Text(
                                          'JUN',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        );
                                    }
                                    return Text(value.toString());
                                  },
                                ),
                              ),
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            gridData: FlGridData(
                              drawVerticalLine: false,
                              show: true,
                              getDrawingHorizontalLine: (value) {
                                return FlLine(
                                  color: Colors.black12,
                                  strokeWidth: 1,
                                );
                              },
                            ),
                            lineBarsData: [
                              LineChartBarData(
                                belowBarData: BarAreaData(
                                  show: true,
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.lightGreen.shade200,
                                      Colors.white,
                                    ],
                                  ),
                                ),
                                color: Colors.lightGreen,
                                isCurved: true,
                                dotData: FlDotData(
                                  show: false,
                                ),
                                spots: [
                                  const FlSpot(0, 3),
                                  const FlSpot(2.5, 2),
                                  const FlSpot(4.9, 5),
                                  const FlSpot(6.8, 2.5),
                                  const FlSpot(8, 4),
                                  const FlSpot(9.5, 3),
                                  const FlSpot(11, 4),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: const Text('fejijfijeijief'),
                      ),
                      Container(
                        child: const Text('fejijfijeijief'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
                height: 500,
                width: double.infinity,
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 0, 15),
                      child: Text(
                        'Recent Activity',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 400,
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(8),
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
                          title: const Text(
                            'Data 5 GB',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'Dec 12, 21',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          trailing: SizedBox(
                            width: 115,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomContainer(
                                    backgroundColor: Colors.red.shade100,
                                    fontColor: Colors.red,
                                    content: 'Expired',
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 400,
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(8),
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
                          title: const Text(
                            'Data 5 GB',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'Dec 12, 21',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          trailing: SizedBox(
                            width: 115,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomContainer(
                                    backgroundColor: Colors.red.shade100,
                                    fontColor: Colors.red,
                                    content: 'Expired',
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 400,
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(8),
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
                          title: const Text(
                            'Data 5 GB',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'Dec 12, 21',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          trailing: SizedBox(
                            width: 115,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomContainer(
                                    backgroundColor: Colors.red.shade100,
                                    fontColor: Colors.red,
                                    content: 'Expired',
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                      width: 400,
                      child: Card(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: ListTile(
                          leading: Container(
                            padding: const EdgeInsets.all(8),
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
                          title: const Text(
                            'Data 5 GB',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          subtitle: const Text(
                            'Dec 12, 21',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          trailing: SizedBox(
                            width: 115,
                            child: Row(
                              children: [
                                Expanded(
                                  child: CustomContainer(
                                    backgroundColor: Colors.red.shade100,
                                    fontColor: Colors.red,
                                    content: 'Expired',
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Map<String, dynamic>> kCreditCards = [
    {
      'index': 0,
      'bank': 'Aerarium',
      'name': 'John Doe',
      'number': '4540 1234 5678 2975',
      'expiration': '11/25',
      'cvc': '123',
    },
    {
      'index': 1,
      'bank': 'Aerarium',
      'name': 'John Doe',
      'number': '5450 8765 4321 6372',
      'expiration': '07/24',
      'cvc': '321',
    },
    {
      'index': 2,
      'bank': 'Aerarium',
      'name': 'John Doe',
      'number': '4540 4321 8765 7446',
      'expiration': '09/23',
      'cvc': '456',
    },
  ];

  List<Widget> _getChildren1() {
    List<CreditCardData> cards = kCreditCards
        .map(
          (e) => CreditCardData.fromJson(e),
        )
        .toList();

    return cards.map((e) => CreditCard(data: e)).toList();
  }

  List<String> _getTabs1() {
    List<CreditCardData> cards = kCreditCards
        .map(
          (e) => CreditCardData.fromJson(e),
        )
        .toList();

    return cards
        .map(
          (e) => '*${e.number.substring(e.number.length - 4, e.number.length)}',
        )
        .toList();
  }
}

class CreditCard extends StatelessWidget {
  final Color? color;
  final CreditCardData data;

  const CreditCard({
    Key? key,
    this.color,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 20,
        ),
        color: color,
        borderRadius: BorderRadius.circular(14.0),
      ),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data.bank,
                ),
                Icon(
                  data.number[0] == '4'
                      ? FontAwesome5Brands.cc_visa
                      : data.number[0] == '5'
                          ? FontAwesome5Brands.cc_mastercard
                          : FontAwesome5Regular.question_circle,
                  size: 36,
                ),
              ],
            ),
          ),
          const Spacer(flex: 2),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Text(
                  data.number,
                  style: const TextStyle(
                    fontSize: 22.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Exp.'),
                const SizedBox(width: 4),
                Text(
                  data.expiration,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Text(
                  data.name,
                  style: const TextStyle(
                    fontSize: 16.0,
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

class CreditCardData {
  int index;
  bool locked;
  final String bank;
  final String name;
  final String number;
  final String expiration;
  final String cvc;

  CreditCardData({
    this.index = 0,
    this.locked = false,
    required this.bank,
    required this.name,
    required this.number,
    required this.expiration,
    required this.cvc,
  });

  factory CreditCardData.fromJson(Map<String, dynamic> json) => CreditCardData(
        index: json['index'],
        bank: json['bank'],
        name: json['name'],
        number: json['number'],
        expiration: json['expiration'],
        cvc: json['cvc'],
      );
}
