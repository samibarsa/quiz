import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SearchTextFiled extends StatelessWidget {
  const SearchTextFiled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.white)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: const BorderSide(color: Colors.white))),
          )),
    );
  }
}
