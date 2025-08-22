import 'package:booklyapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButten extends StatelessWidget {
  const CustomButten({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    required this.borderRadius,
    required this.text,
    this.fontSize,
  });

  final Color backgroundColor;

  final Color textColor;

  final BorderRadius borderRadius;

  final String text;

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextButton(
        onPressed: () {},

        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
