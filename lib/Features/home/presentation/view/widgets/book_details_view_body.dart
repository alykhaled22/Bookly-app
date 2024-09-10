import 'package:bookly_app/Features/home/presentation/view/widgets/books_details_section.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomAppBar(
                  leading: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                  ),
                  actions: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ),
                const BooksDetailsSection(),
                const Expanded(
                  child: SizedBox(
                    height: 30,
                  ),
                ),
                const SimilarBooksSection(),
              ],
            ))
      ],
    );
  }
}
