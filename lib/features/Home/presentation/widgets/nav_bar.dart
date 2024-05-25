// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/features/Home/presentation/widgets/page_view_body.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key, required this.pageViewBody});
  final PageViewBody pageViewBody;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SvgPicture.asset(widget.pageViewBody.imagepath),
        AnimatedContainer(
            padding: widget.pageViewBody.padding,
            duration: const Duration(milliseconds: 200),
            child: SvgPicture.asset('assets/svgimages/selectNavbar.svg')),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 10.h),
              child: InkWell(
                child: SizedBox(
                  height: 40.h,
                  width: 50.w,
                ),
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(0);
                    widget.pageViewBody.animateSelectTab(0);
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 45.h,
              ),
              child: InkWell(
                child: SizedBox(
                  height: 40.h,
                  width: 50.w,
                ),
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(1);
                    widget.pageViewBody.animateSelectTab(1);
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25.w, top: 12.h),
              child: InkWell(
                child: SizedBox(
                  height: 40.h,
                  width: 50.w,
                ),
                onTap: () {
                  setState(() {
                    widget.pageViewBody.pageController.jumpToPage(2);
                    widget.pageViewBody.animateSelectTab(2);
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
