import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/Home/presentation/widgets/courses_row.dart';
import 'package:quiz/features/Home/presentation/widgets/grid_view_item.dart';
import 'package:quiz/features/Home/presentation/widgets/header_of_home_page_body.dart';
import 'package:quiz/features/Home/presentation/widgets/page_view_body.dart';
import 'package:quiz/features/Home/presentation/widgets/list_carusal_items.dart';
import 'package:quiz/features/Home/presentation/widgets/search_text_filed.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.homePageBody});
  final PageViewBody homePageBody;
  @override
  State<HomePage> createState() => _HomePageState();
}

CarouselController carouselController = CarouselController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                HeaderOfHomePageBody(userName: widget.homePageBody.username),
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
                  items: items(widget.homePageBody.currentindex),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        widget.homePageBody.currentindex = index;
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
                const CoursesRow(),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ),
        SliverGrid.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const Row(
            children: [
              SizedBox(
                width: 7.5,
              ),
              GridViewItem(
                imagePath: 'assets/svgimages/textofcontiner.svg',
                title: 'Biology',
                subtitlel: "Biology & the\nscientific methode",
                likes: 1231,
              ),
              SizedBox(
                width: 7.5,
              )
            ],
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.399,
            crossAxisSpacing: 0.w,
            mainAxisSpacing: 0.h,
          ),
        ),
      ],
    );
  }
}
