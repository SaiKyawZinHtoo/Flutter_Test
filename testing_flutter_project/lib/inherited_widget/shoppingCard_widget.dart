import 'package:flutter/material.dart';
import 'package:testing_flutter_project/inherited_widget/inherited_widget.dart';

class ShoppingCard extends StatelessWidget {
  // Number of items in the cart

  const ShoppingCard({super.key});

  @override
  Widget build(BuildContext context) {
    final number = NumberProvider.of(context)!.number;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Icon(
          Icons.shopping_cart,
          size: 30,
        ),
        Positioned(
          top: -5,
          right: -5,
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.red,
            child: Text(
              number.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
