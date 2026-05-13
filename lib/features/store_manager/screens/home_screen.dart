import 'package:bazarflow/core/widgets/custom_text.dart';
import 'package:bazarflow/features/store_manager/widgets/homescreen/dashboard_container.dart';
import 'package:bazarflow/features/store_manager/widgets/homescreen/low_stock_container.dart';
import 'package:bazarflow/features/store_manager/widgets/homescreen/quick_action_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:new_animated_button/new_animated_button.dart';

class sellerHomeScreen extends StatefulWidget {
  const sellerHomeScreen({super.key});

  @override
  State<sellerHomeScreen> createState() => _sellerHomeScreenState();
}

class _sellerHomeScreenState extends State<sellerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          NewAnimatedButton(
            tapAnimation: TapAnimation.bounce(),
            color: Colors.white,
            padding: EdgeInsets.all(0),
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.settings,size: 30,)),
          )
        ],
        title: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Dashboard',
              style: GoogleFonts.playfairDisplay(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20,
              ),
            ),Text(
              'Store Manager Name',
              style: GoogleFonts.playfairDisplay(
                color: Colors.grey.shade800,

                fontSize: 13,
              ),
            ),
          ],
        ),

        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * .05),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                DashboardContainer(
                  onTap: () {},
                  containerColor2: Colors.teal.shade100,
                  iconColor: Colors.white,
                  iconSize: 30,
                  borderRadius: 15,
                  icon: Icons.shopping_cart_rounded,
                  childText1: "Today's \n Orders",
                  childText2: '24',
                  childText3: '+12%',
                  color1: Colors.white,
                  color2: Colors.white,
                  color3: Colors.white,
                  containerColor: Colors.teal,
                  containerHeight: height * .30,
                  containerWidth: width * .45,
                  fontSize1: 20,
                  fontSize2: 30,
                  fontSize3: 16,
                  fontWeight1: FontWeight.normal,
                  fontWeight2: FontWeight.normal,
                  fontWeight3: FontWeight.normal,
                ),
                DashboardContainer(
                  containerColor2: Colors.orange.shade100,
                  iconColor: Colors.white,
                  onTap: () {},
                  iconSize: 35,
                  borderRadius: 15,
                  icon: Icons.attach_money,
                  childText1: "Revenue",
                  childText2: '18.5 K',
                  childText3: 'PKR today',
                  color1: Colors.white,
                  color2: Colors.white,
                  color3: Colors.white,
                  containerColor: Colors.orange,
                  containerHeight: height * .30,
                  containerWidth: width * .45,
                  fontSize1: 20,
                  fontSize2: 30,
                  fontSize3: 15,
                  fontWeight1: FontWeight.normal,
                  fontWeight2: FontWeight.normal,
                  fontWeight3: FontWeight.normal,
                ),
              ],
            ),
            SizedBox(height: height * .02),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                DashboardContainer(
                  containerColor2: Colors.blue.shade100,
                  onTap: () {},
                  iconColor: Colors.white,
                  iconSize: 35,
                  borderRadius: 15,
                  icon: Icons.access_time,
                  childText1: "Pending",
                  childText2: '5',
                  childText3: 'Orders',
                  color1: Colors.white,
                  color2: Colors.white,
                  color3: Colors.white,
                  containerColor: Colors.blue,
                  containerHeight: height * .30,
                  containerWidth: width * .45,
                  fontSize1: 20,
                  fontSize2: 30,
                  fontSize3: 15,
                  fontWeight1: FontWeight.normal,
                  fontWeight2: FontWeight.normal,
                  fontWeight3: FontWeight.normal,
                ),
                DashboardContainer(
                  onTap: () {},
                  iconColor: Colors.white,
                  iconSize: 30,
                  borderRadius: 15,
                  icon: Icons.attach_money,
                  childText1: "Completed",
                  childText2: '19',
                  childText3: 'today',
                  color1: Colors.white,
                  color2: Colors.white,
                  color3: Colors.white,
                  containerColor: Colors.green,
                  containerColor2: Colors.green.shade100,
                  containerHeight: height * .30,
                  containerWidth: width * .45,
                  fontSize1: 20,
                  fontSize2: 30,
                  fontSize3: 15,
                  fontWeight1: FontWeight.normal,
                  fontWeight2: FontWeight.normal,
                  fontWeight3: FontWeight.normal,
                ),
              ],
            ),


            SizedBox(height: height * .04),

            lowStockContainer(
              iconcolor: Colors.red,
              iconsize: 25,
              borderradius: 15,
              childborderradius: 15,
              icon: Icons.shopping_cart_rounded,
              childText1: 'Low Stock',
              childText2: '5',
              text3: '5 iteams running low',
              color1: Colors.black,
              color2: Colors.grey.shade600,
              bordercolor: Colors.red,
              containercolor: Colors.red.shade50,
              containerheight: height*.17,
              containerwidth: width*.93,
              fontSize1: 20,
              fontSize2: 16,
              fontWeight1: FontWeight.bold,
              fontWeight2: FontWeight.normal,

              childcontcolor: Colors.red.shade100,
              ontap: (){},
            ),
            SizedBox(height: height*.04 ,),
            Row(
              children: [
              SizedBox(width: width*.05,),
                customText(childText: 'Quick Actions',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    textColor: Colors.black),
              ],
            ),
            SizedBox(height: height*.03,),
            Row(
              mainAxisAlignment: .spaceEvenly,
              children: [
                quickActionContainer(icon: Icons.my_library_books_outlined,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    width: width*.45,
                    height: height*.15,
                    iconColor: Colors.teal,
                    iconSize: 40,
                    radius: 15,
                    childText: 'View Orders',
                    colorText: Colors.black,
                    containerColor: Colors.white60),
                quickActionContainer(icon: Icons.inventory_2_outlined,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    width: width*.45,
                    height: height*.15,
                    iconColor: Colors.deepPurple,
                    iconSize: 40,
                    radius: 15,
                    childText: 'Inventory',
                    colorText: Colors.black,
                    containerColor: Colors.white60),

              ],
            ),

            SizedBox(height: height*.06,),

          ],
        ),
      ),
    );
  }
}
