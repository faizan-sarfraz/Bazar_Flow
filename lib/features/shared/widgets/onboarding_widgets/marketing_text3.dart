import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class marketingTextThree extends StatelessWidget {
  const marketingTextThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('24/7',style: GoogleFonts.notoSerif(
            fontSize: 30
        ),),
        Text('Support',style: GoogleFonts.playfairDisplay(
            fontSize: 17,
            color: Colors.grey.shade600
        ),)
      ],
    ) ;
  }
}