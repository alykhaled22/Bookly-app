import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custom_err_msg.dart';
import 'package:bookly_app/core/widgets/custom_loding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, bottom: 50),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .13,
        child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
          builder: (context, state) {
            if (state is SimilarBooksSuccess) {
              return ListView.builder(
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
                  });
            } else if (state is SimilarBooksFailure) {
              return CustomErrMsg(errMsg: state.errMsg);
            } else {
              return const CustomLodingIndicator();
            }
          },
        ),
      ),
    );
  }
}
