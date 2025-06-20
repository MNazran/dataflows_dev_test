import 'package:dataflows_dev_test/view/widgets/action_buttons.dart';
import 'package:dataflows_dev_test/view/widgets/home_header.dart';
import 'package:dataflows_dev_test/view/widgets/icon_buttons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            const HomeHeader(),

            // Banner
            Image.asset(
              'assets/images/home-banner.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
            ),

            const SizedBox(height: 10),

            // Three action buttons
            const ActionButtons(),

            const SizedBox(height: 10),

            // Icon buttons
            const IconButtonsExplicit(),
          ],
        ),
      ),
    );
  }
}
