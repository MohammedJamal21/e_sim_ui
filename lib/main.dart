import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import 'screens/data_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) {
          return const HomeScreen();
        },
        DataScreen.routeName: (context) {
          return const DataScreen();
        }
      },
    );
  }
}
