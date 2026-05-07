import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class onBoardingSubHeading extends StatelessWidget {
  const onBoardingSubHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text('Fresh groceries, delivered to your door',textAlign: .center,style: GoogleFonts.playfairDisplay(
        
        
        color: Colors.grey.shade600,
        fontSize: 17,
      
      ),),
    );
  }
}
