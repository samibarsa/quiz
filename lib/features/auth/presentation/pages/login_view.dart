import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/features/auth/presentation/widgets/log_in_body.dart';
import 'package:quiz/features/auth/presentation/widgets/new_widget.dart';
import 'package:quiz/features/onboarding/presentation/widgets/body_widget.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: BackGroundOfAuth(
          child: BodyWidget(
            spaceBetweenDescreptionButton: 35.h,
            spaceBetweenTitleDescreption: 11.h,
            hight_of_sizedbox: 430.h,
            path: 'assets/svgimages/Frame 11.svg',
            title: 'Log in your account',
            descreption: 'Enter your log in details to\naccess your account',
            button: const LogInBody(),
          ),
        ),
      ),
    );
  }
}
