import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/features/auth/presentation/widgets/coustom_text_filed.dart';
import 'package:quiz/features/auth/presentation/widgets/row_of_text.dart';
import 'package:quiz/features/onboarding/presentation/widgets/coustom_button.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        RowOfText(
          OnTap: () => Navigator.of(context).pushNamed('/signin'),
          text: 'Don’t have account ?',
          buttonText: "Sign in",
        )
      ],
    );
  }
}
