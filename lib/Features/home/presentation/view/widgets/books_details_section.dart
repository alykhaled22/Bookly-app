import 'package:bookly_app/Features/home/presentation/view/widgets/book_actions.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .28),
          child: const CustomBookImage(imageURL: "https://th.bing.com/th/id/OIP.tewJtUBm9HtijfUrejeKlQAAAA?rs=1&pid=ImgDetMain",),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: BookActions(),
        ),
      ],
    );
  }
}
