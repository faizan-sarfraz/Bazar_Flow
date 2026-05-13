import 'package:bazarflow/features/shared/providers/navigation_provider.dart';
import 'package:bazarflow/features/shared/widgets/role_selection_widgets/headline_text.dart';
import 'package:bazarflow/features/shared/widgets/role_selection_widgets/role_selector_contanier.dart';
import 'package:bazarflow/features/shared/widgets/role_selection_widgets/sub_heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class roleSelectionScreen extends ConsumerStatefulWidget {
  const roleSelectionScreen({super.key});

  @override
 ConsumerState<roleSelectionScreen> createState() => _roleSelectionScreenState();
}

class _roleSelectionScreenState extends ConsumerState<roleSelectionScreen> {
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Colors.teal.shade100],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Column(
          children: [
            SizedBox(height: 50),

            Row(children: [SizedBox(width: 20), headlineText()]),
            SizedBox(height: 10),
            Row(children: [SizedBox(width: 20), subHeadingText()]),
            SizedBox(height: 10,),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                  roleSelectorContainer(
                    subcontainercolor: Colors.green.shade50,
                    containericon: Icons.shopping_bag_outlined,
                    roleservicetext: 'Shop and Discover',
                    iconcolor: Colors.green,
                    iconsize: 55,
                    rolename: 'Buyer',

                    onTap: () {

                    }


                  ),
                  roleSelectorContainer(
                    subcontainercolor: Colors.blue.shade50,
                    containericon: Icons.storefront_outlined,
                    roleservicetext: 'Sell Your Product',
                    iconcolor: Colors.blue,
                    iconsize: 55,
                    rolename: 'Seller',

                    onTap: () {
                      ref.read(routerProvider).push('/signinscreen');
                    },

                  ),
                  roleSelectorContainer(
                    subcontainercolor: Colors.orange.shade50,
                    containericon: Icons.electric_scooter,
                    roleservicetext: 'Ride To Earn',
                    iconcolor: Colors.orange,
                    iconsize: 55,
                    rolename: 'Rider',

                    onTap: () {},

                  ),
                  roleSelectorContainer(
                    subcontainercolor: Colors.teal.shade50,
                    containericon: Icons.security,
                    roleservicetext: 'Manage Appflow',
                    iconcolor: Colors.teal,
                    iconsize: 55,
                    rolename: 'Admin',

                    onTap: (){

                    },
                  ),


                ],),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
