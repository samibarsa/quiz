import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz/core/util/constatnt.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  PageController pageController = PageController();
  String _status = 'Waiting...';

  Widget _buildFullscreenImage() {
    return Image.asset(
      'assets/svgimages/Frame 9.svg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  void next() {}

  Widget _buildImage(String assetName, [double width = 350]) {
    return SvgPicture.asset(assetName, width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
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

    return IntroductionScreen(
      next: Text("start"),
      done: Container(),
      animationDuration: 1321237973128,
      key: introKey,
      scrollControllers: [pageController],
      globalBackgroundColor: const Color(0xff016BBF),
      allowImplicitScrolling: false,
      autoScrollDuration: 902358342,
      infiniteAutoScroll: true,

      pages: [
        PageViewModel(
          title: "",
          bodyWidget: Stack(
            children: [
              SvgPicture.asset(
                'assets/svgimages/Frame 8.svg',
                height: AppSize.high.h - 29.h,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 505.h,
                  ),
                  Center(
                    child: Text(
                      "Welcome to the online\nE-Learning App",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24.sp, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Center(
                    child: Text(
                      "This is an online school that allows\n you to rediscover yourself. Take the\n courses and be a better student",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: montserrat,
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStatePropertyAll(Size(310.w, 44.h)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0.r),
                          )),
                          backgroundColor: const MaterialStatePropertyAll(
                              Color(0xff009FF5))),
                      onPressed: () => introKey.currentState!.controller
                          .nextPage(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInToLinear),
                      child: const Text(
                        "Start",
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          useScrollView: true,
          body: "",
          title: "",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "",
          body: "",
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      showNextButton: false,
      showDoneButton: false,

      nextFlex: 0,

      showBackButton: false,
      //rtl: true, // Display as right-to-left

      curve: Curves.easeInCubic,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        spacing: EdgeInsets.only(bottom: 25.h, left: 12.w),
        activeColor: Colors.white,
        size: const Size(10.0, 10.0),
        color: Colors.white.withOpacity(40 / 100),
        activeSize: const Size(54.0, 8.0),
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),

      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onBackToIntro(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is the screen after Introduction"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _onBackToIntro(context),
              child: const Text('Back to Introduction'),
            ),
          ],
        ),
      ),
    );
  }
}
