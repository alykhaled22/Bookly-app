import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton(
      {super.key,
      required this.backgrounColor,
      required this.textColor,
      this.borderRadius,
      required this.text, this.onPressed});

  final Color backgrounColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgrounColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
