// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.path,
    required this.title,
    required this.descreption,
    required this.button,
    required this.spaceBetweenTitleDescreption,
    required this.hight_of_sizedbox,
    required this.spaceBetweenDescreptionButton,
  });
  final String path;
  final String title;
  final String descreption;
  final Widget button;

  final double spaceBetweenTitleDescreption;
  final double spaceBetweenDescreptionButton;
  final double hight_of_sizedbox;

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
              height: hight_of_sizedbox,
            ),
            Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.sp, color: Colors.white),
              ),
            ),
            SizedBox(
              height: spaceBetweenTitleDescreption,
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
              height: spaceBetweenDescreptionButton,
            ),
            button,
          ],
        )
      ],
    );
  }
}
