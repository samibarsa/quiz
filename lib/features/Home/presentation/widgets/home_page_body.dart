import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quiz/features/Home/presentation/widgets/grid_view_builder.dart';
import 'package:quiz/features/Home/presentation/widgets/header_of_home_page_body.dart';
import 'package:quiz/features/Home/presentation/widgets/list_carusal_items.dart';
import 'package:quiz/features/Home/presentation/widgets/search_text_filed.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({
    super.key,
    required this.username,
  });
  final String username;

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    CarouselController carouselController = CarouselController();
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderOfHomePageBody(widget: widget),
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
            const SearchTextFiled(),
            SizedBox(
              height: 37.h,
            ),
            CarouselSlider(
              items: items(currentindex),
              carouselController: carouselController,
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentindex = index;
                  });
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 235.w),
              child: Text(
                "Featured",
                style: TextStyle(
                    fontFamily: lexend,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            SvgPicture.asset('assets/svgimages/features.svg'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 42.w, top: 20.h),
                  child: Text(
                    "Courses",
                    style: TextStyle(
                        fontFamily: lexend,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 41.w, top: 26.h),
                  child: Text(
                    "see all",
                    style: TextStyle(
                        color: const Color(0xff009FF5),
                        fontFamily: lexend,
                        fontWeight: FontWeight.w600,
                        fontSize: 8.sp),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const GridViewBuilder()
          ],
        ),
      ),
    );
  }
}
