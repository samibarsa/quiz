import 'package:flutter/material.dart';
import 'package:quiz/features/Home/presentation/pages/homePage.dart';
import 'package:quiz/features/auth/presentation/pages/login_view.dart';
import 'package:quiz/features/auth/presentation/pages/signin.dart';
import 'package:quiz/features/onboarding/presentation/pages/onboarding.dart';

class AppRouter {
  Route? getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/home':
        return MaterialPageRoute(builder: (context) => const OnBoardingPage());
      case '/login':
        return MaterialPageRoute(builder: (context) => const LogIn());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const SignUp());
    }
  }
}
