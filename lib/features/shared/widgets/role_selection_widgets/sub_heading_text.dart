import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class subHeadingText extends StatelessWidget {
  const subHeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text('Choose how you want to experience the market place',
      style: GoogleFonts.playfairDisplay(
        color: Colors.grey.shade600,
        fontSize: 17
      ),
      ),
    );
  }
}
