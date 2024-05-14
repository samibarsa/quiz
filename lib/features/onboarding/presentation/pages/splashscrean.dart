import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff011191),
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child:
              Image.asset(fit: BoxFit.cover, 'assets/images/Splash screen.png'),
        ),
      ),
    );
  }
}
