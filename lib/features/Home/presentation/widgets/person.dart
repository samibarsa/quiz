// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

class person extends StatelessWidget {
  const person({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 255, 7, 7),
              height: AppSize.high.h,
            ),
          ],
        )
      ],
    );
  }
}
