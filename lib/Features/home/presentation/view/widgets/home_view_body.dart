import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                leading: Image.asset(
                  AssetsData.logo,
                  height: 18,
                ),
                actions: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      size: 24,
                    )),
              ),
              const BooksListView(),
              const Padding(
                padding: EdgeInsets.only(left: 24, bottom: 20),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        const BestSellerListView()
      ],
    );
  }
}
