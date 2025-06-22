import 'package:dataflows_dev_test/controllers/navigation_controller.dart';
import 'package:dataflows_dev_test/view/screens/account_screen.dart';
import 'package:dataflows_dev_test/view/screens/discover_screen.dart';
import 'package:dataflows_dev_test/view/screens/home_screen.dart';
import 'package:dataflows_dev_test/view/screens/inbox_screen.dart';
import 'package:dataflows_dev_test/view/screens/mall_screen.dart';
import 'package:dataflows_dev_test/view/widgets/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.find<NavigationController>();

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: Obx(
          () => IndexedStack(
            key: ValueKey(navigationController.currentIndex.value),
            index: navigationController.currentIndex.value,
            children: const [
              HomeScreen(),
              MallScreen(),
              DiscoverScreen(),
              InboxScreen(),
              AccountScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavbar(),
    );
  }
}
