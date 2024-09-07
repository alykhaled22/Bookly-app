
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [CustomAppBar()],
      ),
    );
  }
}
