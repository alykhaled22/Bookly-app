part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoding extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMsg;

  const NewestBooksFailure({required this.errMsg});
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  const NewestBooksSuccess({required this.books});
}
