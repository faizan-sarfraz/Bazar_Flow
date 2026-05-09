import 'package:bounce_tapper/bounce_tapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class roleSelectorContainer extends StatelessWidget {

final Color subcontainercolor;
final IconData containericon;
final Color iconcolor;

final double iconsize;
final String rolename;
final String roleservicetext;
final Duration animationduration;

final VoidCallback onTap;
  const roleSelectorContainer({
    super.key,
    required this.subcontainercolor,

    required this.containericon,
    required this.roleservicetext,
    this.animationduration=const Duration(milliseconds: 300),
    required this.iconcolor,
    required this.iconsize,
    required this.rolename,

    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10,right: 10),
      child: BounceTapper(

        growCurve: Curves.easeInCirc,
        onTap: () {
          Future.delayed(animationduration,onTap);
        },
        growDuration: animationduration,
        child: Container(

          margin: EdgeInsetsGeometry.all(10),
          padding: EdgeInsetsGeometry.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusGeometry.circular(20),


          ),
          child: Row(
        crossAxisAlignment: .center,
            children: [

              Container(
              padding: EdgeInsetsGeometry.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(20),
                color: subcontainercolor,

              ),
              child: Icon(containericon,color: iconcolor,size: iconsize,),
            ),
            SizedBox(width: 30,),
            Column(
              mainAxisAlignment: .spaceEvenly,
              crossAxisAlignment: .start,
              children: [
                Text(rolename,style: GoogleFonts.playfairDisplay(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Text(roleservicetext,style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey
                ),)
              ],
            )
          ],),
        ),
      ),
    );
  }
}
