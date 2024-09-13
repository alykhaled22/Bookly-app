import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 50),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .13,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: CustomBookImage(
                  imageURL:
                      "https://th.bing.com/th/id/OIP.tewJtUBm9HtijfUrejeKlQAAAA?rs=1&pid=ImgDetMain",
                ),
              );
            }),
      ),
    );
  }
}
