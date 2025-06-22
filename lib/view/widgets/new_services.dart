import 'package:dataflows_dev_test/view/widgets/product_card.dart';
import 'package:dataflows_dev_test/view/widgets/shop_icons_row.dart';
import 'package:flutter/material.dart';

class NewServices extends StatelessWidget {
  const NewServices({super.key});

  static const List<Map<String, String>> _products = [
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet',
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
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        'View All',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ),
                    )),
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
                    right: index < _products.length - 1 ? 10 : 0,
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

          // Icons row - Main image (static) + Scrollable icons
          const ShopIconsRow(),
        ],
      ),
    );
  }
}
