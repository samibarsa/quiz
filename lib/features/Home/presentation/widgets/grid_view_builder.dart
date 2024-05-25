import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/Home/presentation/widgets/grid_view_item.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 765.h,
      width: AppSize.width.w - 60.w,
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1.327,
            crossAxisSpacing: 12.w,
            crossAxisCount: 2,
            mainAxisSpacing: 12.h),
        itemBuilder: (context, index) => const GridViewItem(
          imagePath: 'assets/svgimages/textofcontiner.svg',
          title: 'Biology',
          subtitlel: "Biology & the\nscientific methode",
          likes: 1231,
        ),
      ),
    );
  }
}
