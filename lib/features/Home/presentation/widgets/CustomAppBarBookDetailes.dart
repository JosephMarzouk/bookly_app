import 'package:flutter/material.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}
