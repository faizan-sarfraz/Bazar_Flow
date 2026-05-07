import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class marketingTextone extends StatelessWidget {
  const marketingTextone({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('50+',style: GoogleFonts.notoSerif(
          fontSize: 30
        ),),
        Text('Stores',style: GoogleFonts.playfairDisplay(
          fontSize: 17,
          color: Colors.grey.shade600
        ),)
      ],
    ) ;
  }
}
