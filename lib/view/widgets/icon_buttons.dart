import 'package:flutter/material.dart';

class IconButtonsExplicit extends StatelessWidget {
  const IconButtonsExplicit({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 78,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          _buildIconButton('assets/images/button-icon-1.png', () {}),
          const SizedBox(width: 10),
          _buildIconButton('assets/images/button-icon-2.png', () {}),
          const SizedBox(width: 10),
          _buildIconButton('assets/images/button-icon-3.png', () {}),
          const SizedBox(width: 10),
          _buildIconButton('assets/images/button-icon-4.png', () {}),
          const SizedBox(width: 10),
          _buildIconButton('assets/images/button-icon-5.png', () {}),
        ],
      ),
    );
  }

  Widget _buildIconButton(String imagePath, VoidCallback onTap) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain,
          ),
        ));
  }
}
