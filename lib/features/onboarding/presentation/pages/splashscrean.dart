import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff011191),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child:
              Image.asset(fit: BoxFit.cover, 'assets/images/Splash screen.png'),
        ),
      ),
    );
  }
}
