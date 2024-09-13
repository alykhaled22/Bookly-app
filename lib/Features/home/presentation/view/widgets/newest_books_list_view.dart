import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/book_item.dart';
import 'package:bookly_app/core/widgets/custom_err_msg.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: state.books.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookItem(
                  bookModel: state.books[index],
                ),
              );
            },
          ));
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(child: CustomErrMsg(errMsg: state.errMsg));
        } else {
          return const SliverToBoxAdapter(child: CustomLodingIndicator());
        }
      },
    );

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
