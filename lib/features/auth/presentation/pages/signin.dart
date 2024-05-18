import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/features/auth/presentation/widgets/new_widget.dart';
import 'package:quiz/features/auth/presentation/widgets/sign_in_body.dart';
import 'package:quiz/features/onboarding/presentation/widgets/body_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: BackGroundOfAuth(
        child: BodyWidget(
          spaceBetweenDescreptionButton: 15.h,
          spaceBetweenTitleDescreption: 8.h,
          hight_of_sizedbox: 430.h,
          path: 'assets/svgimages/Frame 11.svg',
          title: 'Sign up a new account',
          descreption: 'Enter your details to create\n your account',
          button: const SignInBody(),
        ),
      )),
    );
  }
}
