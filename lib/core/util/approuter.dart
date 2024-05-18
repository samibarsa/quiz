import 'package:flutter/material.dart';
import 'package:quiz/features/auth/presentation/pages/login_view.dart';
import 'package:quiz/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quiz/features/onboarding/presentation/pages/splashscrean.dart';

class AppRouter {
  Route? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => const OnBoardingPage());
      case '/login':
        return MaterialPageRoute(builder: (context) => const LogIn());
    }
  }
}
