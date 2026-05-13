import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_animated_button/new_animated_button.dart';

class DashboardContainer extends StatelessWidget {
  final Color containerColor;
  final double borderRadius;
  final double containerHeight;
  final double containerWidth;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final String childText1;
  final String childText2;
  final String childText3;
  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final FontWeight fontWeight3;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color containerColor2;
  final double fontSize1;
  final double fontSize2;
  final double fontSize3;
  final VoidCallback onTap;


  const DashboardContainer({
    super.key,
    required this.iconColor,
    required this.iconSize,
  required this.borderRadius,
  required this.icon,
  required this.childText1,
  required this.childText2,
  required this.childText3,
  required this.color1,
  required this.color2,
  required this.color3,
  required this.containerColor,
  required this.containerHeight,
  required this.containerWidth,
  required this.fontSize1,
  required this.fontSize2,
  required this.fontSize3,
  required this.fontWeight1,
  required this.fontWeight2,
  required this.fontWeight3,
  required this.containerColor2,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return NewAnimatedButton(
      onPressed: onTap,
      color: containerColor,
      padding: EdgeInsets.all(0),
      tapAnimation: TapAnimation.wave(),
      child: Container(
        decoration: BoxDecoration(
          color: containerColor,
          gradient: LinearGradient(colors: [
            containerColor,
            containerColor2,
          ],
          begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          borderRadius: BorderRadiusGeometry.circular(borderRadius)
          ,

        ),
        height: containerHeight,
        width: containerWidth,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              SizedBox(height: height * .02),
      Row(children: [
        SizedBox(width: width * .05),

        Icon(icon,color: iconColor,size: iconSize),

      ],),
              SizedBox(height: height * .02),
             Row(children: [
               SizedBox(width: width * .05),

               Text(
                 childText1,
                 style: GoogleFonts.playfairDisplay(
                   fontWeight: fontWeight1,
                   color: color1,
                   fontSize: fontSize1,

                 ),
               ),
             ],),

              SizedBox(height: height * .02),
          Row(
            children: [
              SizedBox(width: width * .05),
              Text(
                childText2,
                style:TextStyle(
                  fontWeight: fontWeight2,
                  color: color2,
                  fontSize: fontSize2,

                ),
              ),
            ],
          ),
              SizedBox(height: height * .02),
      Row(children: [
        SizedBox(width: width * .05),
        Text(
      childText3,
      style: GoogleFonts.playfairDisplay(
        fontWeight: fontWeight3,
        color: color3,
        fontSize: fontSize3,

      ),
        )

      ],)
            ],
          ),
        ),
      ),
    );
  }
}
