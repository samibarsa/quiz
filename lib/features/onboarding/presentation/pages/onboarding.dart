import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz/features/onboarding/presentation/widgets/onboarding_pages_list.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

final introKey = GlobalKey<IntroductionScreenState>();

class OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      autoScrollDuration: 2132,
      key: introKey,
      scrollControllers: [pageController],
      globalBackgroundColor: const Color(0xff016BBF),
      infiniteAutoScroll: true,
      pages: pages(context),
      showNextButton: false,
      showDoneButton: false,
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
