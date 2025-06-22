import 'package:flutter/material.dart';

class TrendingDiscoveries extends StatelessWidget {
  const TrendingDiscoveries({super.key});

  static const List<Map<String, String>> _trendingProducts = [
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description':
          'Lorem ipsum dolor sit amet consectetur adipiscing elit. Lorem ipsum dolor sit amet',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
    },
    {
      'imageUrl': 'assets/images/image.jpg',
      'title': 'Lorem Ipsum',
      'description': 'Lorem ipsum dolor sit amet consectetur adipiscing elit',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF112F22),
      ),
      child: Column(
        children: [
          // Trending Discoveries header image
          Image.asset(
            'assets/images/trending-discoveries-crop.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Product grid section with custom staggered layout
          Padding(
            padding: const EdgeInsets.all(16),
            child: _buildStaggeredGrid(),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildStaggeredGrid() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left column
        Expanded(
          child: Column(
            children: [
              _buildProductCard(
                imageUrl: _trendingProducts[0]['imageUrl']!,
                title: _trendingProducts[0]['title']!,
                description: _trendingProducts[0]['description']!,
              ),
              const SizedBox(height: 10),
              _buildProductCard(
                imageUrl: _trendingProducts[2]['imageUrl']!,
                title: _trendingProducts[2]['title']!,
                description: _trendingProducts[2]['description']!,
              ),
              const SizedBox(height: 10),
              _buildProductCard(
                imageUrl: _trendingProducts[1]['imageUrl']!,
                title: _trendingProducts[1]['title']!,
                description: _trendingProducts[1]['description']!,
              ),
            ],
          ),
        ),

        const SizedBox(width: 11),

        // Right column
        Expanded(
          child: Column(
            children: [
              _buildProductCard(
                imageUrl: _trendingProducts[1]['imageUrl']!,
                title: _trendingProducts[1]['title']!,
                description: _trendingProducts[1]['description']!,
              ),
              const SizedBox(height: 10),
              _buildProductCard(
                imageUrl: _trendingProducts[3]['imageUrl']!,
                title: _trendingProducts[3]['title']!,
                description: _trendingProducts[3]['description']!,
              ),
              const SizedBox(height: 10),
              _buildProductCard(
                imageUrl: _trendingProducts[3]['imageUrl']!,
                title: _trendingProducts[3]['title']!,
                description: _trendingProducts[3]['description']!,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard({
    required String imageUrl,
    required String title,
    required String description,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Product image
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Product details
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
