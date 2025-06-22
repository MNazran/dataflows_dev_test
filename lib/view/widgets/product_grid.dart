import 'package:dataflows_dev_test/view/widgets/mall_card.dart';
import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  static const List<Map<String, dynamic>> _products = [
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 75.00',
      'originalPrice': null,
      'discount': null,
      'hasDiscount': false,
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit consectetur adipiscing elit',
      'price': 'RM 100.00',
      'originalPrice': 'RM 200.00',
      'discount': '50%',
      'hasDiscount': true,
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 60.00',
      'originalPrice': 'RM 120.00',
      'discount': '50%',
      'hasDiscount': true,
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 90.00',
      'originalPrice': null,
      'discount': null,
      'hasDiscount': false,
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 75.00',
      'originalPrice': null,
      'discount': null,
      'hasDiscount': false,
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
      'price': 'RM 60.00',
      'originalPrice': 'RM 120.00',
      'discount': '50%',
      'hasDiscount': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.5,
      ),
      itemCount: _products.length,
      itemBuilder: (context, index) {
        final product = _products[index];
        return GestureDetector(
          onTap: () {},
          child: MallCard(product: product),
        );
      },
    );
  }
}
