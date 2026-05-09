import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_animated_button/new_animated_button.dart';
class customAnimatedButton extends StatelessWidget {
  final Color backgroundcolor;
  final String childtext;
  final VoidCallback callbackfunction;
  final double borderradius;
  final double borderwidth;
  final Color foregroundcolor;
  final double buttonheight;
  final double buttonwidth;
  final FontWeight fontweight;
  final double fontsize;
  final Duration animationDuration;

  customAnimatedButton({super.key,required this.backgroundcolor,required this.childtext,required this.fontsize,required this.fontweight
    ,required this.callbackfunction,required this.borderradius,
    required this.borderwidth,required this.foregroundcolor,
    required this.buttonheight, required this.buttonwidth,
    this.animationDuration= const Duration(milliseconds: 500)});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      width: buttonwidth,
      child:
      NewAnimatedButton(

        onPressed: (){
          Future.delayed(animationDuration , callbackfunction);
        },
        color: backgroundcolor,
        tapAnimation: TapAnimation.wave(duration: animationDuration),

        borderRadius: 10,

        child: Text(childtext,style: GoogleFonts.playfairDisplay(
          fontSize:fontsize ,
          fontWeight: fontweight,
          color: foregroundcolor,
        ),),
      ),
    );
  }
}