import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class onBoardingTextHeadline extends StatelessWidget {
  const onBoardingTextHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Bazar Flow',style:GoogleFonts.playfairDisplay(
        fontSize: 35,
        color: Colors.teal,
      fontWeight: FontWeight.bold
    ),);
  }
}
