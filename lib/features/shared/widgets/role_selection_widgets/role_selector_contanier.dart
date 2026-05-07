import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class roleSelectorContainer extends StatelessWidget {

final Color subcontainercolor;
final IconData containericon;
final Color iconcolor;

final double iconsize;
final String rolename;
final String roleservicetext;
final bool isSelected;
final VoidCallback onTap;
  const roleSelectorContainer({
    super.key,
    required this.subcontainercolor,

    required this.containericon,
    required this.roleservicetext,
    required this.iconcolor,
    required this.iconsize,
    required this.rolename,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 10,right: 10),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          margin: EdgeInsetsGeometry.all(10),
          padding: EdgeInsetsGeometry.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusGeometry.circular(20),
            border: Border.all(
              color: isSelected ? iconcolor : Colors.transparent,
              width: 2.5,
            ),
            boxShadow: [
              BoxShadow(
                color: isSelected
                    ? iconcolor.withOpacity(0.4)
                    : Colors.black.withOpacity(0.1),
                blurRadius: isSelected ? 20 : 10,
                offset: Offset(0, isSelected ? 6 : 2),
              ),
            ],
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
