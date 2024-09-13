import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.count,
      required this.rate});

  final MainAxisAlignment mainAxisAlignment;
  final int count;
  final num rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          rate.toString(),
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($count)",
          style: Styles.textStyle14.copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
