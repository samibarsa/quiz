import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/auth/presentation/widgets/coustom_text_filed.dart';
import 'package:quiz/features/onboarding/presentation/widgets/body_widget.dart';
import 'package:quiz/features/onboarding/presentation/widgets/coustom_button.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          height: AppSize.high.h,
          width: AppSize.width.w,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff0085CC), Color(0xff000E8F)],
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/Frame 11_logo.png',
              ),
            ),
          ),
          child: BodyWidget(
            spaceBetweenDescreptionButton: 35.h,
            spaceBetweenTitleDescreption: 11.h,
            hight_of_sizedbox: 430.h,
            path: 'assets/svgimages/Frame 11.svg',
            title: 'Log in your account',
            descreption: 'Enter your log in details to\naccess your account',
            button: Column(
              children: [
                CoustomTextFiled(
                  hintStyle: 'Username',
                  padding: 75.w,
                  icon: Icons.person,
                ),
                SizedBox(
                  height: 11.h,
                ),
                CoustomTextFiled(
                  hintStyle: 'Password',
                  padding: 75.w,
                  icon: Icons.lock,
                ),
                SizedBox(
                  height: 45.h,
                ),
                CoustomButton(
                    text: 'Log in',
                    onPressed: () {},
                    color: const Color(0xff009FF5),
                    icon: null),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have account ?",
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontFamily: montserrat,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).pushNamed('/signup'),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: const Color(0xff0085CC),
                            fontWeight: FontWeight.w500,
                            fontSize: 11.sp,
                            fontFamily: montserrat),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}