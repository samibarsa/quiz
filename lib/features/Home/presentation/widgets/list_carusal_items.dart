import 'package:dots_indicator/dots_indicator.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> items(int currentindex) => [
      Stack(
        children: [
          SizedBox(
            height: 160.h,
            width: 308.w,
            child: SvgPicture.asset(
              'assets/svgimages/picture.svg',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 120.h),
            child: DotsIndicator(
                dotsCount: 3,
                position: currentindex.toDouble(),
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  color: Colors.white.withOpacity(40 / 100),
                  activeShape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: Colors.white)),
                )),
          )
        ],
      ),
      Stack(
        children: [
          SvgPicture.asset(
            'assets/svgimages/picture.svg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 120.h),
            child: DotsIndicator(
                dotsCount: 3,
                position: currentindex.toDouble(),
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  color: Colors.white.withOpacity(40 / 100),
                  activeShape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: Colors.white)),
                )),
          )
        ],
      ),
      Stack(
        children: [
          SvgPicture.asset(
            'assets/svgimages/picture.svg',
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w, top: 120.h),
            child: DotsIndicator(
                dotsCount: 3,
                position: currentindex.toDouble(),
                decorator: DotsDecorator(
                  activeColor: Colors.white,
                  activeSize: Size(40.w, 6.h),
                  color: Colors.white.withOpacity(40 / 100),
                  activeShape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.r),
                      borderSide: const BorderSide(color: Colors.white)),
                )),
          )
        ],
      ),
    ];
