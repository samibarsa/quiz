import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({
    super.key,
    required this.introKey,
    required this.text,
  });
  final String text;
  final GlobalKey<IntroductionScreenState> introKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize: MaterialStatePropertyAll(Size(310.w, 44.h)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0.r),
            )),
            backgroundColor: const MaterialStatePropertyAll(Color(0xff009FF5))),
        onPressed: () => introKey.currentState!.controller.nextPage(
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInToLinear),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
