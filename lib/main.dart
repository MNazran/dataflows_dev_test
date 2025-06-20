import 'package:dataflows_dev_test/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DataFlows',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
