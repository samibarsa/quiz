import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz/core/util/constatnt.dart';
import 'package:quiz/features/onboarding/presentation/pages/onboarding.dart';
import 'package:quiz/features/onboarding/presentation/widgets/body_widget.dart';
import 'package:quiz/features/onboarding/presentation/widgets/coustom_button.dart';
import 'package:quiz/features/onboarding/presentation/widgets/page_decoration.dart';

List<PageViewModel> pages(BuildContext context) => [
      PageViewModel(
        title: "",
        bodyWidget: BodyWidget(
          spaceBetweenDescreptionButton: 45.h,
          spaceBetweenTitleDescreption: 45.h,
          hight_of_sizedbox: 460.h,
          path: 'assets/svgimages/Frame 8.svg',
          title: 'Welcome to the online\nE-Learning App',
          descreption:
              'This is an online school that allows\n you to rediscover yourself. Take the\n courses and be a better student',
          button: CoustomButton(
            text: "Start",
            onPressed: () {
              introKey.currentState!.controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInToLinear);
            },
            color: const Color(0xff009FF5),
            icon: null,
          ),
        ),
        decoration: pageDecoration,
      ),
      PageViewModel(
        bodyWidget: BodyWidget(
          spaceBetweenTitleDescreption: 47.h,
          spaceBetweenDescreptionButton: 35.h,
          hight_of_sizedbox: 500.h,
          path: 'assets/svgimages/Frame 9.svg',
          title: 'Anytime, Anywhere',
          descreption:
              'Enjoy the captivating process of\n online education in a place and at\n time of your choice.',
          button: CoustomButton(
            text: "Continues",
            onPressed: () {
              introKey.currentState!.controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInToLinear);
            },
            color: const Color(0xff009FF5),
            icon: null,
          ),
        ),
        title: "",
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "",
        bodyWidget: BodyWidget(
            spaceBetweenTitleDescreption: 6.h,
            hight_of_sizedbox: 449.h,
            spaceBetweenDescreptionButton: 26.h,
            path: 'assets/svgimages/Frame 10.svg',
            title: 'Log in or sign up',
            descreption: 'select desire log in methode',
            button: Column(
              children: [
                CoustomButton(
                  text: "Phone",
                  color: Colors.white,
                  onPressed: () {
                    introKey.currentState!.controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInToLinear);
                  },
                  icon: Icons.phone,
                ),
                CoustomButton(
                  icon: Icons.email,
                  text: "Email address",
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/login');
                  },
                ),
                CoustomButton(
                  text: "Log in with Google",
                  color: const Color(0xff009FF5),
                  onPressed: () {
                    introKey.currentState!.controller.nextPage(
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeInToLinear);
                  },
                  icon: FontAwesomeIcons.google,
                ),
                Text(
                  "By registering or skipping this your agree to",
                  style: TextStyle(
                      fontSize: 11.sp,
                      color: Colors.white,
                      fontFamily: montserrat,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Terms of Service",
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff0085CC),
                      fontFamily: montserrat),
                )
              ],
            )),
        decoration: pageDecoration,
      ),
    ];
