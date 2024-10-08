import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks(
      {required String category, required String bookName}) async {
    emit(SimilarBooksLoding());

    var result = await homeRepo.fetchSimilarBooks(
        category: category, bookName: bookName);
    result.fold(
        (failure) => emit(
              SimilarBooksFailure(errMsg: failure.errMsg),
            ),
        (books) => emit(
              SimilarBooksSuccess(books: books),
            ));
  }
}
