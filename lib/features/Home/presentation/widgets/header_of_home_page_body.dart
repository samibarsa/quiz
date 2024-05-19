import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/Home/presentation/widgets/home_page_body.dart';

class HeaderOfHomePageBody extends StatelessWidget {
  const HeaderOfHomePageBody({
    super.key,
    required this.widget,
  });

  final HomePageBody widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30.h, left: 40.w),
          child: Text(
            '👋 Hi, ${widget.username}',
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
    );
  }
}
