import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homeRepo) : super(AllBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchAllBooks() async {
    emit(AllBooksLoding());

    var result = await homeRepo.fetchAllBooks();
    result.fold(
        (failure) => emit(
              AllBooksFailure(errMsg: failure.errMsg),
            ),
        (books) => emit(
              AllBooksSuccess(books: books),
            ));
  }
}
