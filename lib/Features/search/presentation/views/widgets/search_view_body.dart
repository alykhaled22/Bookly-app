import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key, required this.books});
  final List<BookModel> books;

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<BookModel> filteredBooks = [];

  @override
  void initState() {
    filteredBooks = widget.books;
    super.initState();
  }

  void filterBooks(String query) {
    final List<BookModel> updatedList = widget.books.where((book) {
      final bookTitleLower = book.volumeInfo.title!.toLowerCase();
      final searchLower = query.toLowerCase();

      return bookTitleLower.contains(searchLower);
    }).toList();

    setState(() {
      filteredBooks = updatedList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SearchTextField(
            onChanged: (bookTitle) {
              filterBooks(bookTitle);
            },
          ),
        ),
        Expanded(
            child: SearchResultListView(
          books: filteredBooks,
        ))
      ],
    );
  }
}
