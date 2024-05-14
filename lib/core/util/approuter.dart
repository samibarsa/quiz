import 'package:flutter/material.dart';
import 'package:quiz/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quiz/features/onboarding/presentation/pages/splashscrean.dart';

class AppRouter {
  Route? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case '/home':
        return MaterialPageRoute(builder: (context) => const OnBoardingPage());
    }
  }
}
