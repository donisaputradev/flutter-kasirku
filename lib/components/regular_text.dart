import 'package:flutter/material.dart';
import 'package:kasirku/extentions/theme_extention.dart';

class RegularText extends StatelessWidget {
  const new({
    super.key,
    required this.text,
    this.color,
    this.size,
    this.textAlign,
    this.weight,
  });

  final String text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? weight;

  factory RegularText.semiBold(
    String text, {
    double? size,
    Color? color,
    TextAlign? textAlign,
  }) {
    return RegularText(
      text: text,
      color: color,
      size: size,
      textAlign: textAlign,
      weight: FontWeight.w600,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: context.theme.textTheme.bodyMedium?.copyWith(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    );
  }
}
