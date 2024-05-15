import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quiz/features/onboarding/presentation/widgets/coustom_button.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.path,
    required this.title,
    required this.descreption,
  });
  final String path;
  final String title;
  final String descreption;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          path,
          height: AppSize.high.h - 29.h,
        ),
        Column(
          children: [
            SizedBox(
              height: 505.h,
            ),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.sp, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 38.h,
            ),
            Center(
              child: Text(
                descreption,
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
            CoustomButton(introKey: introKey, text: "Start"),
          ],
        )
      ],
    );
  }
}
