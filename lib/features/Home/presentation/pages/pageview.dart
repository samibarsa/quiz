import 'package:flutter/material.dart';
import 'package:quiz/features/Home/presentation/widgets/page_view_body.dart';

class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEBEBEB),
      body: PageViewBody(
        username: 'Username',
        currentindex: 0,
      ),
    );
  }
}
