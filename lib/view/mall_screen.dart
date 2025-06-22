import 'package:flutter/material.dart';
import 'package:dataflows_dev_test/view/widgets/custom_search_bar.dart';

class MallScreen extends StatelessWidget {
  const MallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      appBar: _buildAppBar(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.all(12),
          child: Image.asset(
            'assets/images/icon-arrow.png',
            width: 12,
            height: 12,
            fit: BoxFit.contain,
          ),
        ),
      ),
      title: Container(
        margin: const EdgeInsets.only(right: 16),
        child: const CustomSearchBar(),
      ),
    );
  }
}
