import 'package:flutter/material.dart';
class textField extends StatelessWidget {
  final TextEditingController controller;
  final BorderRadius focusedorderRadius;
  final BorderRadius borderRadius;
  final Color focusedBorderColor;
  final Color borderColor;
  final double focusedBorderWidth;
  final double borderWidth;
  final String hintText;
  final Widget prefixIcon;
  final Color prefixIconColor;
  final Color hintTextColor;
  final TextInputType keyboardType;

  const textField({
    super.key,
    required this.hintText,
  required this.prefixIcon,
  required this.borderWidth,
  required this.borderColor,
  required this.borderRadius,
    required this.keyboardType,
  required this.focusedBorderWidth,
  required this.focusedBorderColor,
  required this.focusedorderRadius,
  required this.controller,
  required this.prefixIconColor,
    required this.hintTextColor

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(left: 15,right: 15),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType ,
        decoration: InputDecoration(
          enabled: true,

          border: OutlineInputBorder(
            borderRadius:borderRadius ,
            borderSide: BorderSide(color: borderColor ,
              width: borderWidth,),

          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: focusedorderRadius,
            borderSide: BorderSide(color: focusedBorderColor,
              width:focusedBorderWidth ,),

          ),
          hintText: hintText ,

          hintStyle: TextStyle(
            color: hintTextColor
          ),
          prefixIcon: prefixIcon,
          prefixIconColor: prefixIconColor,

        ),
      ),
    );
  }
}
