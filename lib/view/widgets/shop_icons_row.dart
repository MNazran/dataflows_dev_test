import 'package:flutter/material.dart';

class ShopIconsRow extends StatelessWidget {
  const ShopIconsRow({super.key});

  static const List<String> _scrollableIcons = [
    'assets/images/shop-plants-icon-1.png',
    'assets/images/shop-plants-icon-2.png',
    'assets/images/shop-plants-icon-3.png',
    'assets/images/shop-plants-icon-4.png',
    'assets/images/shop-plants-icon-5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        children: [
          // Long thin line that spans the entire width
          Positioned(
            bottom: 2,
            left: 16,
            right: 16,
            child: Container(
              height: 1,
              color: Colors.grey[300],
            ),
          ),

          Row(
            children: [
              // Main static icon (bigger, stays fixed)
              Column(
                children: [
                  Image.asset(
                    'assets/images/shop-plants-icon-main.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ],
              ),

              const SizedBox(width: 10),

              // Scrollable icons section with fade effect
              Expanded(
                child: Stack(
                  children: [
                    // Scrollable icons
                    SizedBox(
                      height: 70,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _scrollableIcons.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              onTap: () {},
                              child: Image.asset(
                                _scrollableIcons[index],
                                width: 50,
                                height: 50,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    // Gradient overlay on the left to create blur/fade effect
                    Positioned(
                      left: 0,
                      top: 0,
                      bottom: 0,
                      width: 20, // Width of the fade effect
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.grey[100]!, // Solid background color
                              Colors.grey[100]!.withOpacity(0.8),
                              Colors.grey[100]!.withOpacity(0.4),
                              Colors.grey[100]!.withOpacity(0.0), // Transparent
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Moving thick indicator line for scrollable icons
          // This would typically be controlled by scroll position
          // For now, showing it at the first scrollable icon position
          Positioned(
            bottom: 2,
            left: 0,
            child: Container(
              width: 50,
              height: 3,
              decoration: BoxDecoration(
                color: const Color(0xFF244B3A),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
