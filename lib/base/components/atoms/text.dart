import 'package:flutter/material.dart';
import 'package:ridwan/base/colors.dart';
import 'package:ridwan/base/texts.dart';

class TAText extends StatelessWidget {
  const TAText({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style,
  }) : super(key: key);

  const TAText.title1Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title1Bold,
  }) : super(key: key);

  const TAText.title1Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title1Medium,
  }) : super(key: key);

  const TAText.title1Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title1Regular,
  }) : super(key: key);

  const TAText.title2Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title2Bold,
  }) : super(key: key);

  const TAText.title2Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title2Medium,
  }) : super(key: key);

  const TAText.title2Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = title2Regular,
  }) : super(key: key);

  const TAText.subtitle1Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle1Bold,
  }) : super(key: key);

  const TAText.subtitle1Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle1Medium,
  }) : super(key: key);

  const TAText.subtitle1Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle1Regular,
  }) : super(key: key);

  const TAText.subtitle2Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle2Bold,
  }) : super(key: key);

  const TAText.subtitle2Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle2Medium,
  }) : super(key: key);

  const TAText.subtitle2Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = subtitle2Regular,
  }) : super(key: key);

  const TAText.body1Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body1Bold,
  }) : super(key: key);

  const TAText.body1Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body1Medium,
  }) : super(key: key);

  const TAText.body1Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body1Regular,
  }) : super(key: key);

  const TAText.body2Bold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body2Bold,
  }) : super(key: key);

  const TAText.body2Medium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body2Medium,
  }) : super(key: key);

  const TAText.body2Regular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = body2Regular,
  }) : super(key: key);

  const TAText.tinyBold({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = tinyBold,
  }) : super(key: key);

  const TAText.tinyMedium({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = tinyMedium,
  }) : super(key: key);

  const TAText.tinyRegular({
    Key? key,
    required this.text,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.color,
    this.maxLines,
    this.overflow,
    this.textAlign = TextAlign.start,
    this.style = tinyRegular,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign textAlign;
  final TextStyle? style;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: (style ?? const TextStyle(color: TBColors.tbCharcoal)).copyWith(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        letterSpacing: letterSpacing ?? 0,
      ),
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
