import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class onBoardingButton extends StatelessWidget {
  final Color backgroundcolor;
  final String childtext;
  final VoidCallback callbackfunction;
  final double borderradius;
  final Color bordercolor;
  final double borderwidth;
  final Color foregroundcolor;
  final double buttonheight;
  final double buttonwidth;
  final FontWeight fontweight;
  final double fontsize;

   onBoardingButton({super.key,required this.backgroundcolor,required this.childtext,required this.fontsize,required this.fontweight
     ,required this.callbackfunction,required this.borderradius,required this.bordercolor,required this.borderwidth,required this.foregroundcolor,required this.buttonheight, required this.buttonwidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child: ElevatedButton(onPressed: callbackfunction,
          child: Text(childtext,style: GoogleFonts.playfairDisplay(
            fontSize:fontsize ,
            fontWeight: fontweight,
            color: foregroundcolor,
          ),),
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolor,

          shape: RoundedRectangleBorder(

            borderRadius: BorderRadiusGeometry.circular(borderradius),

      side: BorderSide(
        color: bordercolor,
        width: borderwidth
      )
          )
        ),

      ),
    );
  }
}
