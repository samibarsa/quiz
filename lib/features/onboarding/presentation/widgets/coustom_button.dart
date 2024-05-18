import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoustomButton extends StatelessWidget {
  const CoustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.icon,
  });
  final String text;
  final void Function() onPressed;
  final Color color;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 11.h),
      child: ElevatedButton(
          style: ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(310.w, 44.h)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0.r),
              )),
              backgroundColor: MaterialStatePropertyAll(color)),
          onPressed: onPressed,
          child: SizedBox(
            width: 240.h,
            height: 44.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: color == Colors.white ? Colors.black : Colors.white,
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color:
                          color == Colors.white ? Colors.black : Colors.white),
                ),
                SizedBox(
                  width: 20.w,
                )
              ],
            ),
          )),
    );
  }
}
