import 'package:flutter/material.dart';

class onBoardingLogo extends StatelessWidget {


  const onBoardingLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 60,
      backgroundColor: Colors.teal.shade600,
      child: Icon(Icons.shopping_cart_outlined,color: Colors.white,size: 70,),
    );
  }
}
