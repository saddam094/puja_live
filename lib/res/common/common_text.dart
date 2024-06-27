import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextDecoration textDecoration;
  final int maxLine;
  final String fontFamily;
  final List<TextSpan>? children;
  final TextStyle? style;
  const CommonText(
      {super.key,
      required this.text,
      this.color = Colors.black,
      this.fontSize = 14,
      this.maxLine = 10,
      this.textAlign = TextAlign.start,
      this.fontWeight = FontWeight.w400,
      this.textDecoration = TextDecoration.none,
      this.fontFamily = "Poppins",
      this.children, this.style});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: text,
          style: style ?? TextStyle(
            fontFamily: fontFamily,
            decoration: textDecoration,
            fontSize: fontSize + 0.001.sh,
            color: color,
            fontWeight: fontWeight,
          ),
          children: children),
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
    );
  }
}
