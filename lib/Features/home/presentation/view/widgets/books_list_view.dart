import 'package:bookly_app/Features/home/presentation/manager/all_books_cubit/all_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custom_err_msg.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(
      builder: (context, state) {
        if (state is AllBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 50, top: 15),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .28,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: state.books.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: CustomBookImage(
                        imageURL:
                            state.books[index].volumeInfo.imageLinks.thumbnail,
                      ),
                    );
                  }),
            ),
          );
        } else if (state is AllBooksFailure) {
          return CustomErrMsg(errMsg: state.errMsg);
        } else {
          return const CustomLodingIndicator();
        }
      },
    );
  }
}
