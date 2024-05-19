// ignore: file_names
import 'package:flutter/material.dart';
import 'package:quiz/features/Home/presentation/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: HomePageBody(
        username: 'Username',
      ),
    );
  }
}
