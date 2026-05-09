import 'package:bazarflow/core/widgets/custom_animated_button.dart';
import 'package:bazarflow/core/widgets/custom_text.dart';
import 'package:bazarflow/features/auth/providers/auth_provider.dart';
import 'package:bazarflow/features/auth/widgets/text_field.dart';
import 'package:bazarflow/features/shared/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:snackbar_flutter/snackbar_flutter.dart';
class signinScreen extends  ConsumerStatefulWidget {
  const signinScreen({super.key});

  @override
  ConsumerState<signinScreen> createState() => _signupScreenState();
}

class _signupScreenState extends ConsumerState<signinScreen> {

  final email=TextEditingController();
  final password=TextEditingController();
  Future<void> signin()async{
    try {

      await ref.read(authprovider.notifier).signIn(email.text, password.text);
      if (mounted) {
        CustomSnackBar.show(
            context: context,
            message: 'Welcome back!',
            type: SnackBarType.success,
            style: SnackBarStyle.bubble,
            // Optional: Choose a style
            duration: const Duration(seconds: 2),
            position: SnackBarPosition.top
        );
      }
    }
    catch(e){
      CustomSnackBar.show(context: context,
          message:'${e.toString()}',
      title: "Error",
        position: SnackBarPosition.top,
          type: SnackBarType.error,
        style: SnackBarStyle.bubble

      );
    }
  }
  @override
  Widget build(BuildContext context) {
    final currentuser=ref.watch(authprovider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          ref.read(routerProvider).pop();
        },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Column(

        children: [
        SizedBox(height: 30,),
          //welcom text
          Row(children: [
            SizedBox(width: 20,),
          customText(childText: 'Welcome Back',
              fontSize: 40,
              fontWeight: FontWeight.bold,
              textColor: Colors.teal)
        ],),
          // subtext
          SizedBox(height: 15,),
          Row(children: [
            SizedBox(width: 20,),
          customText(childText: 'Sign-in To Continue Selling',
              fontSize: 18,
              fontWeight: FontWeight.normal,
              textColor: Colors.grey.shade500)
        ],),
          SizedBox(height: 50,),
          //email txt
          Row(children: [
            SizedBox(width: 20,),
          customText(childText: 'Email',
              fontSize: 17,
              fontWeight: FontWeight.bold,
              textColor: Colors.black

          )
        ],),
          SizedBox(height: 15,),
          textField(hintText: 'You@gmail.com',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(Icons.email_outlined),
              borderWidth: 0,
              borderColor:Colors.grey ,
              hintTextColor: Colors.grey.shade600,
              borderRadius: BorderRadius.circular(10),
              focusedBorderWidth: 2,
              focusedBorderColor: Colors.teal,
              focusedorderRadius: BorderRadius.circular(20),
              controller: email,
              prefixIconColor: Colors.teal),
          SizedBox(height: 30,),
          Row(children: [
            SizedBox(width: 20,),
            customText(childText: 'Password',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                textColor: Colors.black

            )
          ],),
          SizedBox(height: 15,),
          textField(hintText: '*********',
              keyboardType:TextInputType.visiblePassword,
              prefixIcon: Icon(Icons.lock_outline),
              borderWidth: 0,
              hintTextColor: Colors.grey.shade600,
              borderColor:Colors.grey ,
              borderRadius: BorderRadius.circular(10),
              focusedBorderWidth: 2,
              focusedBorderColor: Colors.teal,
              focusedorderRadius: BorderRadius.circular(20),
              controller: password,
              prefixIconColor: Colors.teal),

          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: .end,
            children: [
            TextButton(
              onPressed: (){},
              child:
              customText(childText: 'Forgot Password?',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.teal),
            ),


          ],),

          SizedBox(height: 20,),
          customAnimatedButton(backgroundcolor: Colors.teal,
              childtext: 'Sign In',
              fontsize: 20,
              fontweight: FontWeight.bold,
              callbackfunction: ()async{
              await signin();
              ref.read(routerProvider).push('/sellerHomeScreen');
              },
              borderradius: 15,

              borderwidth: 2,
              foregroundcolor: Colors.white,
              buttonheight: 60,
              buttonwidth: 300),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            ref.read(routerProvider).push('/signupscreen');
          },
              child: customText(childText: 'Dont have an account? Signup',
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                  textColor: Colors.black)),


      ],),
    );
  }
}
