import 'package:dataflows_dev_test/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  static const List<Map<String, String>> _tabData = [
    {
      'label': 'HOME',
      'icon_selected': 'assets/images/nav-icon-homegreen.png',
      'icon_unselected': 'assets/images/nav-icon-home.png',
    },
    {
      'label': 'MALL',
      'icon_selected': 'assets/images/nav-icon-mallgreen.png',
      'icon_unselected': 'assets/images/nav-icon-mall.png',
    },
    {
      'label': 'DISCOVER',
      'icon_selected': 'assets/images/nav-icon-discover.png',
      'icon_unselected': 'assets/images/nav-icon-discover.png',
    },
    {
      'label': 'INBOX',
      'icon_selected': 'assets/images/nav-icon-inbox.png',
      'icon_unselected': 'assets/images/nav-icon-inbox.png',
    },
    {
      'label': 'ACCOUNT',
      'icon_selected': 'assets/images/nav-icon-account.png',
      'icon_unselected': 'assets/images/nav-icon-account.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.find<NavigationController>();

    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Stack(
          children: [
            BottomNavigationBar(
              // Set the current selected index from the controller
              currentIndex: navigationController.currentIndex.value,

              onTap: (index) => navigationController
                  .changeIndex(index), // Callback when a tab is tapped

              showUnselectedLabels:
                  true, // Always show labels for unselected items
              type: BottomNavigationBarType
                  .fixed, // Ensure the type is fixed so labels don't shift on selection
              backgroundColor: Colors.white,
              elevation: 0, // Remove elevation to match the clean design

              // Set the color for selected and unselected labels
              selectedItemColor: const Color(0xFF244B3A),
              unselectedItemColor: Colors.grey[400],

              // Customize label style
              selectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.5,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
              ),

              // Build the list of BottomNavigationBarItems dynamically
              items: List.generate(_tabData.length, (index) {
                final tab = _tabData[index];
                final isSelected =
                    navigationController.currentIndex.value == index;

                return BottomNavigationBarItem(
                  // Dynamically choose the icon image based on selection state
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Image.asset(
                      isSelected
                          ? tab['icon_selected']!
                          : tab['icon_unselected']!,
                      width: 24.0,
                      height: 24.0,
                      color: isSelected
                          ? const Color(0xFF244B3A)
                          : Colors.grey[400],
                    ),
                  ),
                  // The label text
                  label: tab['label'],
                );
              }),
            ),

            // Green indicator line for selected tab
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: List.generate(_tabData.length, (index) {
                  final isSelected =
                      navigationController.currentIndex.value == index;
                  return Expanded(
                    child: Container(
                      height: 2,
                      color: isSelected
                          ? const Color(0xFF244B3A)
                          : Colors.transparent,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
    

// class CustomBottomNavbar extends StatelessWidget {
//   const CustomBottomNavbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final NavigationController navigationController =
//         Get.find<NavigationController>();
//     return Obx(
//       () => BottomNavigationBar(
//         currentIndex: navigationController.currentIndex.value,
//         onTap: (index) => navigationController.changeIndex(index),
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'HOME',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.storefront),
//             label: 'MALL',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.lightbulb),
//             label: 'DISCOVER',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications_active),
//             label: 'INBOX',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'ACCOUNT',
//           ),
//         ],
//       ),
//     );
//   }
// }