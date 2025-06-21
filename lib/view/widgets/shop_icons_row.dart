import 'package:flutter/material.dart';

class ShopIconsRow extends StatefulWidget {
  const ShopIconsRow({super.key});

  @override
  State<ShopIconsRow> createState() => _ShopIconsRowState();
}

class _ShopIconsRowState extends State<ShopIconsRow> {
  final ScrollController _scrollController = ScrollController();
  double _indicatorPosition = 0.0;
  int _selectedIndex = 0;

  static const List<String> _scrollableIcons = [
    'assets/images/shop-plants-icon-1.png',
    'assets/images/shop-plants-icon-2.png',
    'assets/images/shop-plants-icon-3.png',
    'assets/images/shop-plants-icon-4.png',
    'assets/images/shop-plants-icon-5.png',
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    _indicatorPosition = 16.0;
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      final scrollOffset = _scrollController.offset;
      const itemWidth = 65.0;

      final scrollableIconIndex = (scrollOffset / itemWidth).round();

      setState(() {
        if (scrollOffset <= 0) {
          _selectedIndex = 0;
          _indicatorPosition = 16.0;
        } else {
          _selectedIndex = scrollableIconIndex + 1;
          _indicatorPosition =
              96.0 + (scrollableIconIndex * itemWidth) - scrollOffset;
        }
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
          // Long thin line that spans the entire width
          Positioned(
            bottom: 2,
            left: 16,
            right: 16,
            child: Container(
              height: 1,
              color: const Color(0xFF244B3A),
            ),
          ),

          Row(
            children: [
              // Main static icon (bigger, stays fixed)
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = 0;
                        _indicatorPosition = 16.0;
                      });
                      // Scroll back to beginning
                      _scrollController.animateTo(
                        0,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Image.asset(
                      'assets/images/shop-plants-icon-main.png',
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
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
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: _scrollableIcons.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 50,
                            margin: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              onTap: () {
                                // Scroll to selected icon and update indicator
                                final targetOffset = index * 65.0;
                                _scrollController.animateTo(
                                  targetOffset,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Image.asset(
                                _scrollableIcons[index],
                                width: 60,
                                height: 60,
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
                      width: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.grey[100]!,
                              Colors.grey[100]!.withOpacity(0.8),
                              Colors.grey[100]!.withOpacity(0.4),
                              Colors.grey[100]!.withOpacity(0.0),
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

          // Single moving thick indicator line
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            bottom: 1,
            left: _indicatorPosition,
            child: Container(
              width: _selectedIndex == 0
                  ? 70
                  : 50, // Wider for main icon, narrower for scrollable icons
              height: 4,
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
