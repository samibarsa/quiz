// ignore: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
    required this.username,
  });
  final String username;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 40.w),
                  child: Text(
                    '👋 Hi, $username',
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: lexend,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.w, top: 40.h),
                  child: Image.asset(
                    'assets/images/notificationbing.png',
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "What would you like to learn \n today ? search below",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: lexend,
                fontWeight: FontWeight.w400,
                fontSize: 14.sp,
              ),
            ),
            SizedBox(
              height: 37.h,
            ),
            SizedBox(
              width: 320.w,
              child: Material(
                  shadowColor: Colors.black,
                  elevation: 8,
                  borderRadius: BorderRadius.circular(8.r),
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20.h,
                    style: TextStyle(
                      height: 1.2.h,
                    ),
                    decoration: InputDecoration(
                        isDense: true,
                        prefix: SizedBox(width: 5.w),
                        prefixIconColor: Colors.black,
                        prefixIconConstraints: BoxConstraints.loose(
                          Size(50.w, 30.h),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: SvgPicture.asset(
                            'assets/svgimages/Vector.svg',
                          ),
                        ),
                        border: outLineInputBorder(),
                        focusedBorder: outLineInputBorder(),
                        enabledBorder: outLineInputBorder()),
                  )),
            )
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() => OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(color: Colors.white));
}
