import 'package:bazarflow/core/widgets/custom_animated_button.dart';
import 'package:bazarflow/features/auth/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snackbar_flutter/snackbar_flutter.dart';

import '../../../core/widgets/custom_text.dart';
import '../../shared/providers/navigation_provider.dart';
import '../widgets/text_field.dart';
class signupScreen extends ConsumerStatefulWidget {
  const signupScreen({super.key});

  @override
  ConsumerState<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends ConsumerState<signupScreen> {
  final name=TextEditingController();
  final phonenumber=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  Future<void> signUp()async{
    try {
      await ref.read(authprovider.notifier).signUp(email.text, password.text);
      if (mounted) {
        CustomSnackBar.show(
            context: context, message: 'Account Created Successfully');
      }
    }
    catch (e){
      CustomSnackBar.show(context: context,
          message: '${e.toString()}',
      title: 'Error',
        type: SnackBarType.error
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:  AppBar(
    leading: IconButton(onPressed: (){
      ref.read(routerProvider).pop();
    },
        icon: Icon(Icons.arrow_back_ios)),
  ),
      body: SingleChildScrollView(
        child: Column(
          children: [
        
            SizedBox(height: 30,),
            //headingtext
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Create Account',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.teal)
            ],),
            // subtext
            SizedBox(height: 10,),
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Join Bazar Flow Today',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  textColor: Colors.grey.shade500)
            ],),
            SizedBox(height: 10,),
            //name txt and textfield
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Full Name',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black
        
              )
            ],),
            SizedBox(height: 10,),
            textField(hintText: ' Ali Khan',
                prefixIcon: Icon(Icons.person_outline),
                borderWidth: 0,
                keyboardType: TextInputType.text,
                borderColor:Colors.grey ,
                hintTextColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(10),
                focusedBorderWidth: 2,
                focusedBorderColor: Colors.teal,
                focusedorderRadius: BorderRadius.circular(20),
                controller: name,
                prefixIconColor: Colors.teal),
            SizedBox(height: 10,),
            //phone number txt and textfld
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Phone Number',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black
        
              )
            ],),
            SizedBox(height: 10,),
            textField(hintText: ' +92300-000-00',
                keyboardType: TextInputType.phone,
                prefixIcon: Icon(Icons.person_outline),
                borderWidth: 0,
                borderColor:Colors.grey ,
                hintTextColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(10),
                focusedBorderWidth: 2,
                focusedBorderColor: Colors.teal,
                focusedorderRadius: BorderRadius.circular(20),
                controller: phonenumber,
                prefixIconColor: Colors.teal),
            SizedBox(height: 10,),

            // email txt and textfield
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Email',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black
        
              )
            ],),
            SizedBox(height: 10,),
            textField(hintText: ' you@gmail.com',
                prefixIcon: Icon(Icons.email_outlined),
                borderWidth: 0,
                keyboardType: TextInputType.emailAddress,
                borderColor:Colors.grey ,
                hintTextColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(10),
                focusedBorderWidth: 2,
                focusedBorderColor: Colors.teal,
                focusedorderRadius: BorderRadius.circular(20),
                controller: email,
                prefixIconColor: Colors.teal),
        
            SizedBox(height: 10,),
            //password
            Row(children: [
              SizedBox(width: 20,),
              customText(childText: 'Password',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black
        
              )
            ],),
            SizedBox(height: 10,),
            textField(hintText: '*************',
                prefixIcon: Icon(Icons.person_outline),
                borderWidth: 0,
                keyboardType: TextInputType.visiblePassword,
                borderColor:Colors.grey ,
                hintTextColor: Colors.grey.shade600,
                borderRadius: BorderRadius.circular(10),
                focusedBorderWidth: 2,
                focusedBorderColor: Colors.teal,
                focusedorderRadius: BorderRadius.circular(20),
                controller: password,
                prefixIconColor: Colors.teal),
            SizedBox(height: 30,),
            customAnimatedButton(backgroundcolor: Colors.teal,
                childtext: 'Create Account',
                fontsize: 20,
                fontweight: FontWeight.bold,
                callbackfunction: ()async{
               await signUp();

                },
                borderradius: 15,
                borderwidth: 1,
                foregroundcolor: Colors.white,
                buttonheight: 60,
                buttonwidth: 340),

          ],
        ),
      ),

    );
  }
}
