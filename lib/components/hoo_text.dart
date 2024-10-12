import 'package:flutter/material.dart';

//
// ignore: must_be_immutable
class HooText extends StatelessWidget {
  late String text;
  late double fontSize;
  late Color color; //默认是文本橙色
  late FontWeight fontWeight;
  late TextAlign textAlign;
  late int maxLines;
  late TextOverflow overflow;
  late double height; //这个height 特殊
  late double left; //padding 值
  late double top;
  late double right;
  late double bottom;
  TextBaseline? textBaseline;
  TextDecoration? decoration;
  TextStyle? textStyle;

  HooText({
    this.text = "",
    this.fontSize = 12,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.start,
    this.maxLines = 100,
    this.overflow = TextOverflow.ellipsis,
    this.height = 1.6,
    this.left = 0.0,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0,
    this.textBaseline,
    this.decoration,
    this.textStyle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(left, top, right, bottom),
      child: Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        style: textStyle ??
            TextStyle(
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight,
              height: height == 1.0 ? null : height,
              textBaseline: textBaseline,
              decoration: decoration,
            ),
        textAlign: textAlign,
      ),
    );
  }
}
