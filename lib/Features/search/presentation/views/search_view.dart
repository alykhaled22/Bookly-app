import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView(
      {super.key, required this.allBooks, required this.newestBooks});

  final List<BookModel> allBooks;
  final List<BookModel> newestBooks;
  @override
  Widget build(BuildContext context) {
    final List<BookModel> books = allBooks + newestBooks;

    return SafeArea(
      child: Scaffold(
        body: SearchViewBody(
          books: books,
        ),
      ),
    );
  }
}
