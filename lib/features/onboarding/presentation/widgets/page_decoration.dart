import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageDecoration pageDecoration = const PageDecoration(
  safeArea: 0,
  boxDecoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0085CC), Color(0xff000E8F)])),
  bodyPadding: EdgeInsets.zero,
  bodyAlignment: Alignment.center,
  fullScreen: false,
  titlePadding: EdgeInsets.zero,
  bodyFlex: 0,
  imagePadding: EdgeInsets.zero,
  contentMargin: EdgeInsets.zero,
  footerPadding: EdgeInsets.zero,
  footerFlex: 0,
  pageMargin: EdgeInsets.zero,
);
