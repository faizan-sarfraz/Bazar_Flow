import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class headlineText extends StatelessWidget {
  const headlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Welcome To \nBazar Flow',style: GoogleFonts.playfairDisplay(
      fontSize: 40,
      height: 1.6,
      fontWeight: FontWeight.bold,color: Colors.teal
    ),);
  }
}
