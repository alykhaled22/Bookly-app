import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrMsg extends StatelessWidget {
  const CustomErrMsg({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMsg,
      style: Styles.textStyle16,
    );
  }
}
