import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 50,top: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .28,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: CustomBookImage(),
              );
            }),
      ),
    );
  }
}
