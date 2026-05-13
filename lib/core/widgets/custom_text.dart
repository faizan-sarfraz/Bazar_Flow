
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class customText extends StatelessWidget {
  final String childText;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;

  const customText({super.key,required this.childText,required this.fontSize,required this.fontWeight, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text('$childText',
      style: GoogleFonts.playfairDisplay(
        color: textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,

      ),
    );
  }
}
