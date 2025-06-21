import 'package:dataflows_dev_test/view/widgets/action_buttons.dart';
import 'package:dataflows_dev_test/view/widgets/home_header.dart';
import 'package:dataflows_dev_test/view/widgets/icon_buttons.dart';
import 'package:dataflows_dev_test/view/widgets/new_services.dart';
import 'package:dataflows_dev_test/view/widgets/trending_discoveries.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header section
            const HomeHeader(),

            // banner
            Image.asset(
              'assets/images/home-banner.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),

            const SizedBox(height: 15),

            // three action buttons
            const ActionButtons(),

            const SizedBox(height: 15),

            // icon buttons
            const IconButtonsExplicit(),

            const SizedBox(height: 15),

            // new services
            const NewServices(),

            // trending discoveries
            const TrendingDiscoveries(),
          ],
        ),
      ),
    );
  }
}
