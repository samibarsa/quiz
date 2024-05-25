import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz/core/util/constatnt.dart';

class GridViewItem extends StatelessWidget {
  const GridViewItem({
    super.key,
    required this.title,
    required this.imagePath,
    required this.subtitlel,
    required this.likes,
  });

  final String title;
  final String imagePath;
  final String subtitlel;
  final int likes;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 180.w,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.r)),
                child: Image.asset('assets/images/Gradient.png',
                    width: 170.w, fit: BoxFit.fill),
              ),
              Container(
                height: 83.h,
                width: 170.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(8.r))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(top: 8.h, left: 9.w, right: 10.w),
                          child: SvgPicture.asset(imagePath),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 0.w, bottom: 4.h, top: 10.h),
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontFamily: mochiy,
                                    fontSize: 6.sp,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff0085CC)),
                              ),
                            ),
                            SizedBox(
                              width: 100.w,
                              child: Text(
                                subtitlel,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 8.sp),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: SvgPicture.asset(
                            'assets/svgimages/like.svg',
                            height: 15.h,
                            width: 15.w,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 50.w),
                          child: Text(
                            "$likes",
                            style: TextStyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: lexend,
                                color: const Color(0xff468CE7)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5.w),
                          child: SvgPicture.asset(
                              'assets/svgimages/viewbutton.svg'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
