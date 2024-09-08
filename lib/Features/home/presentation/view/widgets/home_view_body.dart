import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        BooksListView(),
        Padding(
          padding: EdgeInsets.only(left: 24,bottom: 20),
          child: Text(
            "Best Seller",
            style: Styles.textStyle18,
          ),
        ),
        BestSellerItem(),
      ],
    );
  }
}
