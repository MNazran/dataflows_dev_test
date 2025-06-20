import 'package:flutter/material.dart';

class NewServices extends StatelessWidget {
  const NewServices({super.key});

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
        ],
      ),
    );
  }
}
