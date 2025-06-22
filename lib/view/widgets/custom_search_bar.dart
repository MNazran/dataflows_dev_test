import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        onChanged: (text) {
          debugPrint('Search text changed: $text');
        },
        decoration: InputDecoration(
          hintText: 'Search Salon',
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'assets/images/icon-search.png',
              width: 16,
              height: 16,
              fit: BoxFit.contain,
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Image.asset(
                'assets/images/icon-filter.png',
                width: 16,
                height: 16,
                fit: BoxFit.contain,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(
              color: Colors.grey.withOpacity(0.3),
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
