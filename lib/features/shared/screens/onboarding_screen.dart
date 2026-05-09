import 'package:bazarflow/features/shared/providers/navigation_provider.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/marketing_text1.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/marketing_text2.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/marketing_text3.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/onboarding_button.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/onboarding_logo.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/onboarding_subheading.dart';
import 'package:bazarflow/features/shared/widgets/onboarding_widgets/onboarding_text_headline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class onBoardingScreen extends ConsumerStatefulWidget {
  const onBoardingScreen({super.key});

  @override
  ConsumerState<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends ConsumerState<onBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 100),
          Row(mainAxisAlignment: .center, children: [onBoardingLogo()]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: .center, children: [onBoardingTextHeadline()]),
          SizedBox(height: 10),
          Row(mainAxisAlignment: .center, children: [onBoardingSubHeading()]),
          SizedBox(height: 100,),
          //get startd button
          Row(
            mainAxisAlignment: .center,
            children: [
              onBoardingButton(
                backgroundcolor: Colors.teal,
                childtext: 'Get Started',
                callbackfunction: () {
                  ref.read(routerProvider).push('/roleselection');
                },
                borderradius: 10,
                bordercolor: Colors.teal,
                borderwidth: 0,
                buttonheight: 60,
                buttonwidth: 300,
                foregroundcolor: Colors.white,
                fontsize: 20,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 20,),
          //create account butn
          Row(
            mainAxisAlignment: .center,
            children: [
              onBoardingButton(
                backgroundcolor: Colors.teal.shade50,
                childtext: 'Create Account',
                callbackfunction: () {
                 ref.read(routerProvider).push('roleselection');
                  },
                borderradius: 10,
                bordercolor: Colors.teal,
                borderwidth: 1,
                buttonheight: 60,
                buttonwidth: 300,
                foregroundcolor: Colors.teal,
                fontsize: 18,
                fontweight: FontWeight.bold,
              ),
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: .center,
            children: [
                marketingTextone(),
              SizedBox(width: 20,),
              marketingTextTwo(),
              SizedBox(width: 20,),

              marketingTextThree()
            ],
          )
        ],
      ),
    );
  }
}
