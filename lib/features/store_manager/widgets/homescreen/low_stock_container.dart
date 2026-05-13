import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_animated_button/new_animated_button.dart';
class lowStockContainer extends StatelessWidget {
  final Color containercolor;
  final double borderradius;
  final double containerheight;
  final double containerwidth;
  final IconData icon;
  final Color iconcolor;
  final Color childcontcolor;
  final double iconsize;
  final String childText1;
  final String childText2;
  final String text3;

  final FontWeight fontWeight1;
  final FontWeight fontWeight2;
  final Color color1;
  final Color color2;

  final Color bordercolor;
  final double fontSize1;
  final double fontSize2;
  final double childborderradius;

  final VoidCallback ontap;
lowStockContainer({super.key,
  required this.iconcolor,
  required this.iconsize,
  required this.borderradius,
  required this.childborderradius,
  required this.icon,
  required this.childText1,
  required this.childText2,
  required this.text3,

  required this.color1,
  required this.color2,
  required this.bordercolor,

  required this.containercolor,
  required this.containerheight,
  required this.containerwidth,
  required this.fontSize1,
  required this.fontSize2,

  required this.fontWeight1,
  required this.fontWeight2,

  required this.childcontcolor,
  required this.ontap,

});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return NewAnimatedButton(
      padding: EdgeInsets.all(0),
      tapAnimation: TapAnimation.bounce(bounceHeight: 15,),
      color: Colors.red,

      child: Container(
        decoration: BoxDecoration(
          color: containercolor,
          border: Border.all(
            color: bordercolor,
          ),
          borderRadius: BorderRadiusGeometry.circular(borderradius)
          ,

        ),
        height: containerheight,
        width: containerwidth,
        child: Padding(
          padding: EdgeInsetsGeometry.all(10),
          child: Column(
            crossAxisAlignment: .center,
            mainAxisAlignment: .center,
            children: [
              SizedBox(height: height * .02),
              Row(children: [
                SizedBox(width: width * .05),

                Icon(icon,color: iconcolor,size: iconsize),
                SizedBox(width: width * .03),

                Text(
                  childText1,
                  style: GoogleFonts.playfairDisplay(
                    fontWeight: fontWeight1,
                    color: color1,
                    fontSize: fontSize1,

                  ),
                ),
                SizedBox(width: width * .30),
                Container(
                  decoration: BoxDecoration(
                    color: childcontcolor,

                    borderRadius: BorderRadiusGeometry.circular(childborderradius),

                  ),
                  height: 40,
                  width: 50,
                  child: Center(child: Text(childText2,style: TextStyle(
                    color: Colors.red.shade900
                  ),)),
                )

              ],),
              SizedBox(height: height * .02),

              Row(
                children: [
                  SizedBox(width: width * .05),
                  Text(
                    text3,
                    style:TextStyle(
                      fontWeight: fontWeight2,
                      color: color2,
                      fontSize: fontSize2,

                    ),
                  ),
                ],
              ),
              SizedBox(height: height * .02),

            ],
          ),
        ),
      ),
    );
  }
}
