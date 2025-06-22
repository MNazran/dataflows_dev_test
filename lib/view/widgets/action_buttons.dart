import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/button-shop.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/button-services.png',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/button-posts.png',
                    fit: BoxFit.cover,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
