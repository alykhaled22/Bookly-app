import 'package:bookly_app/Features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 10,
      (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BestSellerItem(),
        );
      },
    ));

    // return Expanded(
    //   child: ListView.builder(
    //       physics: const NeverScrollableScrollPhysics(),
    //       padding: EdgeInsets.zero,
    //       itemCount: 10,
    //       itemBuilder: (context, index) {
    //         return const Padding(
    //           padding: EdgeInsets.symmetric(vertical: 5),
    //           child: BestSellerItem(),
    //         );
    //       }),
    // );
  }
}
