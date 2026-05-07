import 'package:bazarflow/features/shared/providers/navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
class splashScreen extends ConsumerStatefulWidget {
  const splashScreen({super.key});

  @override
  ConsumerState<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends ConsumerState<splashScreen> {
@override
  void initState() {

    super.initState();
    _navigatetoonboarding();

  }
Future<void>_navigatetoonboarding()async{
  await  Future.delayed(Duration(seconds: 4),() {
    if(!mounted){
      return;
    }
   ref.read(routerProvider).go('/onboarding');
  } ,);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.teal,
      body: Column(
        mainAxisAlignment: .center,
        children: [
          Center(child: Lottie.asset('assets/animations/splash.json'))
        ],
      ),
    );
  }
}
