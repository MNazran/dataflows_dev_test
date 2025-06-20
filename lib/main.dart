import 'package:dataflows_dev_test/controllers/navigation_controller.dart';
import 'package:dataflows_dev_test/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(NavigationController());
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
      home: const MainScreen(),
    );
  }
}
