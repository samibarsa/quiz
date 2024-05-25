import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

class CoursesRow extends StatelessWidget {
  const CoursesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 42.w, top: 20.h),
          child: Text(
            "Courses",
            style: TextStyle(
                fontFamily: lexend,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 41.w, top: 26.h),
          child: Text(
            "see all",
            style: TextStyle(
                color: const Color(0xff009FF5),
                fontFamily: lexend,
                fontWeight: FontWeight.w600,
                fontSize: 8.sp),
          ),
        )
      ],
    );
  }
}
