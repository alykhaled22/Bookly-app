import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_text_field.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SearchTextField(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24, bottom: 20),
          child: Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
        ),
        Expanded(child: SearchResultListView())
      ],
    );
  }
}
