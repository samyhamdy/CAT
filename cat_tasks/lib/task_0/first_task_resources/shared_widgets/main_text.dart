import 'package:cat_tasks/task_0/first_task_resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextDecoration? textDecoration;
  final Color? color;
  final Color? decorationColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final double? height;
  final int? maxLines;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;

  const AppText(
    this.text, {
    Key? key,
    this.textDecoration,
    this.color,
    this.fontWeight,
    this.fontSize,
    this.height,
    this.maxLines,
    this.textAlign,
    this.textOverflow,
    this.decorationColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
        color: color ?? ColorsManager.white,
        fontWeight: fontWeight,
        decoration: textDecoration ?? TextDecoration.none,
        height: height ?? 1.2,
        fontSize: fontSize ?? 12.sp,
      ),
      overflow: textOverflow,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
