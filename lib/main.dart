import 'package:flutter/material.dart';
import 'package:quiz/core/util/approuter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz/core/util/constatnt.dart';

void main() {
  runApp(Quiz(
    appRouter: AppRouter(),
  ));
}

class Quiz extends StatelessWidget {
  const Quiz({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(AppSize.width, AppSize.high),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: ThemeData(fontFamily: mochiy),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.getRoute,
      ),
    );
  }
}
