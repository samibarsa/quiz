import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';

class DetailesSection extends StatelessWidget {
  const DetailesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 9.w, right: 10.w),
              child: SvgPicture.asset('assets/svgimages/textofcontiner.svg'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 01.sp, bottom: 2.h, top: 15.h),
                  child: Text(
                    "Biology",
                    style: TextStyle(
                        fontFamily: mochiy,
                        fontSize: 6.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff0085CC)),
                  ),
                ),
                Text(
                  "Biology & the\nscientific methode",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 8.sp),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 11.h,
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: SvgPicture.asset(
                'assets/svgimages/like.svg',
                height: 15.h,
                width: 15.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 40.w),
              child: Text(
                "1231",
                style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: lexend,
                    color: const Color(0xff468CE7)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.w),
              child: SvgPicture.asset('assets/svgimages/viewbutton.svg'),
            )
          ],
        )
      ],
    );
  }
}
