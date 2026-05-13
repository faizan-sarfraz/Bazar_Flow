import 'package:bazarflow/features/auth/screens/signin_screen.dart';
import 'package:bazarflow/features/auth/screens/signup_screen.dart';
import 'package:bazarflow/features/shared/screens/onboarding_screen.dart';
import 'package:bazarflow/features/shared/screens/role_selection_screen.dart';
import 'package:bazarflow/features/shared/screens/splash_screen.dart';
import 'package:bazarflow/features/store_manager/screens/bottom_nav_screen.dart';
import 'package:bazarflow/features/store_manager/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

final routerProvider=Provider<GoRouter>((ref){
  return GoRouter(
    initialLocation: '/splash',
    routes:[
      GoRoute(
        path: '/splash',
        name: 'splash',
        builder: (context, state) => const splashScreen(),
      ),
      GoRoute(
          path: '/onboarding',
        name: 'onboarding',
        builder: (context, state) => const onBoardingScreen(),

      ),
      GoRoute(
          path: '/roleselection',
        name: 'roleselection',
        builder: (context, state) => const roleSelectionScreen(),

      ),
      GoRoute(
          path: '/signupscreen',
        name: 'signupscreen',
        builder: (context, state) => const signupScreen(),

      ),
      GoRoute(
        path: '/signinscreen',
        name: 'signinscreen',
        builder: (context, state) => const signinScreen(),

      ),
      GoRoute(
        path: '/sellerHomeScreen',
        name: 'sellerHomeScreen',
        builder: (context, state) => const sellerHomeScreen(),

      ),
      GoRoute(
        path: '/mainscreen',
        name: 'mainscreen',
        builder: (context, state) => const bottomNavScreen(),

      ),
    ],

  );
});