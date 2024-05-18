import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

class BackGroundOfAuth extends StatelessWidget {
  const BackGroundOfAuth({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.high.h,
      width: AppSize.width.w,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0085CC), Color(0xff000E8F)],
        ),
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Frame 11_logo.png',
          ),
        ),
      ),
      child: child,
    );
  }
}
