import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_animated_button/new_animated_button.dart';
class quickActionContainer extends StatelessWidget {
  final Color containerColor;
  final Color colorText;
  final Color iconColor;
  final IconData icon;
  final String childText;
  final double fontSize;
  final double iconSize;
  final double radius;
  final double height;
  final double width;
  final FontWeight fontWeight;
  const quickActionContainer({super.key,
  required this.icon,
    required this.width,
    required this.height,
  required this.iconSize,
  required this.fontWeight,
  required this.fontSize,
  required this.radius,
  required this.childText,
  required this.colorText,
  required this.containerColor,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    var heightt=MediaQuery.of(context).size.height;
    return NewAnimatedButton(
      padding: EdgeInsets.all(0),
      tapAnimation: TapAnimation.bounce(bounceHeight: 15),
      color: containerColor,
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          border: Border.all(
            color: Colors.black26,

          ),
          borderRadius:
          BorderRadiusGeometry.circular(radius)
        ),
        height: height,
        width: width,
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start
            ,
            children: [
              Icon(icon,color: iconColor,size: iconSize,),
              SizedBox(height: heightt*.01,),
              Text(childText,style: GoogleFonts.playfairDisplay(
                fontSize: fontSize,
                fontWeight: fontWeight,color: colorText,

              ),)
            ],
          ),
        ),
      ),
    );
  }
}
