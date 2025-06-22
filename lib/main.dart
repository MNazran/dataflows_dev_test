import 'package:dataflows_dev_test/controllers/navigation_controller.dart';
import 'package:dataflows_dev_test/view/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: '.env');

  Get.put(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DataFlows',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const MainScreen(),
    );
  }
}
