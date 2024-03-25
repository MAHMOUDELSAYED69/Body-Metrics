import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final String fontFamily;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final bool needUnderline;
  final TextDirection? textDirection;

  const CustomText(
    this.text, {
    super.key,
    this.fontSize = 14,
    this.fontFamily = 'Poppins',
    this.fontWeight,
    this.color,
    this.textAlign,
    this.needUnderline = false,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final scaleFactor = screenWidth / 380;
    final adjustedFontSize = fontSize * scaleFactor;

    return Text(
      text,
      textAlign: textAlign,
      textDirection: textDirection,
      style: TextStyle(
        fontSize: adjustedFontSize,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        color: color,
        decorationColor: color,
        decoration: needUnderline ? TextDecoration.underline : null,
      ),
    );
  }
}