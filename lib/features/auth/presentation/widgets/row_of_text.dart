// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

class RowOfText extends StatelessWidget {
  const RowOfText({
    super.key,
    required this.text,
    required this.buttonText,
    required this.OnTap,
  });
  final String text;
  final String buttonText;
  final void Function() OnTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 11.sp,
            fontFamily: montserrat,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        InkWell(
          onTap: OnTap,
          child: Text(
            buttonText,
            style: TextStyle(
                color: const Color(0xff0085CC),
                fontWeight: FontWeight.w500,
                fontSize: 11.sp,
                fontFamily: montserrat),
          ),
        )
      ],
    );
  }
}
