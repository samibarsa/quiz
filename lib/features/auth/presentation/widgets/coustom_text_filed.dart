import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

class CoustomTextFiled extends StatelessWidget {
  const CoustomTextFiled({
    required this.hintStyle,
    required this.icon,
    required this .padding,
    super.key,
  });
  final String hintStyle;
  final IconData icon;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 310.w,
        child: TextField(
          style: TextStyle(
              fontSize: 13.sp,
              height: 1.h,
              color: Colors.white,
              fontFamily: montserrat,
              fontWeight: FontWeight.w500),
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintText: hintStyle,
              hintStyle: const TextStyle(color: Colors.white),
              prefix: SizedBox(
                width: padding,
              ),
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              enabledBorder: outlineInputBorder(),
              border: outlineInputBorder(),
              focusedBorder: outlineInputBorder()),
        ));
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.white,
      ),
    );
  }
}
//
