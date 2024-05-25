// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:quiz/features/Home/presentation/pages/home_page1.dart';
import 'package:quiz/features/Home/presentation/widgets/mycourse.dart';
import 'package:quiz/features/Home/presentation/widgets/nav_bar.dart';
import 'package:quiz/features/Home/presentation/widgets/person.dart';

class PageViewBody extends StatefulWidget {
  PageViewBody({super.key, required this.username, required this.currentindex});
  int currentindex;
  final String username;
  EdgeInsetsGeometry padding = const EdgeInsets.only();
  String imagepath = 'assets/svgimages/navbar.svg';
  var pageController = PageController(initialPage: 1);
  void animateSelectTab(int value) {
    if (value == 1) {
      imagepath = 'assets/svgimages/navbar.svg';
      padding = EdgeInsets.zero;
    } else if (value == 0) {
      imagepath = "assets/svgimages/navbarcourse.svg";
      padding = EdgeInsets.only(right: 220.w);
    } else {
      imagepath = 'assets/svgimages/navbarperson.svg';
      padding = EdgeInsets.only(left: 220.w);
    }
  }

  @override
  State<PageViewBody> createState() => _PageViewBodyState();
}

class _PageViewBodyState extends State<PageViewBody> {
  int pageindex = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        PageView(
          onPageChanged: (value) {
            setState(() {
              widget.animateSelectTab(value);
            });
          },
          controller: widget.pageController,
          children: [
            const Mycourse(),
            HomePage(
              homePageBody: widget,
            ),
            const person(),
          ],
        ),
        NavBar(pageViewBody: widget)
      ],
    );
  }
}
