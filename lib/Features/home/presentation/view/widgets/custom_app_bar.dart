
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AssetsData.logo,
          height: 18,
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 24,
            ))
      ],
    );
  }
}