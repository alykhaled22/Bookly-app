import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly_app/Features/home/presentation/view/widgets/placeholder_image.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/widgets/custom_err_msg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.category});
  final String category;
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
                      child: GestureDetector(
                        onTap: () {
                          GoRouter.of(context).pushReplacement(
                            AppRouter.kBookDetails,
                            extra: [
                              state.books[index],
                              category,
                            ],
                          );
                        },
                        child: CustomBookImage(
                          imageURL: state
                              .books[index].volumeInfo.imageLinks.thumbnail,
                        ),
                      ),
                    );
                  });
            } else if (state is SimilarBooksFailure) {
              return CustomErrMsg(errMsg: state.errMsg);
            } else {
              return Skeletonizer(
                enabled: true,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: PlaceholderImage(),
                      );
                    }),
              );
            }
          },
        ),
      ),
    );
  }
}
