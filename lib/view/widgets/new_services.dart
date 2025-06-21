import 'package:dataflows_dev_test/view/widgets/product_card.dart';
import 'package:flutter/material.dart';

class NewServices extends StatelessWidget {
  const NewServices({super.key});

  static const List<Map<String, String>> _products = [
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 'RM 10.00',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 15.00',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur',
      'price': 'RM 25.00',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 12.00',
    },
  ];

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
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'NEW SERVICES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Recommended based on your preference',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Product cards
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _products.length,
              itemBuilder: (context, index) {
                final product = _products[index];
                return Container(
                  margin: EdgeInsets.only(
                    right: index < _products.length - 1 ? 12 : 0,
                  ),
                  child: ProductCard(
                    imageUrl: product['imageUrl']!,
                    title: product['title']!,
                    description: product['description']!,
                    price: product['price']!,
                    width: 160,
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),

          // Scrollable icons
          Container(
            height: 80,
            child: Stack(
              children: [
                // Scrollable icons (1st layer)
                Positioned(
                  left: 16,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 100, right: 16),
                    itemCount: _scrollableIcons.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 20),
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

                // Positioned(
                //   child: Container(
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //         begin: Alignment.centerLeft,
                //         end: Alignment.centerRight,
                //         colors: [
                //           Colors.grey[100]!.withOpacity(0.0),
                //           Colors.grey[100]!.withOpacity(0.8),
                //           Colors.grey[100]!,
                //         ],
                //       ),
                //     ),
                //   ),
                // ),

                // Main static icon (2nd layer)
                Positioned(
                  left: 10,
                  top: 0,
                  child: Image.asset(
                    'assets/images/shop-plants-icon-main.png',
                    width: 70,
                    height: 70,
                    fit: BoxFit.contain,
                  ),
                ),

                // Green line
                Positioned(
                  left: 16,
                  bottom: 5,
                  child: Container(
                    width: 70,
                    height: 3,
                    decoration: BoxDecoration(
                      color: const Color(0xFF244B3A),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
