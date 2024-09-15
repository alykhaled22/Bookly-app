import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key, this.onChanged});

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: 'Search by book title...',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 24,
            color: Colors.white.withOpacity(.7),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(.7)),
        borderRadius: BorderRadius.circular(12));
  }
}
