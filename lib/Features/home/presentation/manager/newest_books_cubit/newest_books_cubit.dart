import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;
  List<BookModel> newestBooks = [];
  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoding());

    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(
        NewestBooksFailure(errMsg: failure.errMsg),
      ),
      (books) {
        newestBooks = books;
        emit(NewestBooksSuccess(books: books));
      },
    );
  }
}
