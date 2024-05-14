import 'package:flutter/material.dart';
import 'package:quiz/core/util/approuter.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.getRoute,
    );
  }
}
