import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class marketingTextTwo extends StatelessWidget {
  const marketingTextTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('1k+',style: GoogleFonts.notoSerif(
            fontSize: 30
        ),),
        Text('Products',style: GoogleFonts.playfairDisplay(
            fontSize: 17,
            color: Colors.grey.shade600
        ),)
      ],
    ) ;
  }
}
