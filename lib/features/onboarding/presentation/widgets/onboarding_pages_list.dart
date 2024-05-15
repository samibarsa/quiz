import 'package:introduction_screen/introduction_screen.dart';
import 'package:quiz/features/onboarding/presentation/widgets/body_widget.dart';
import 'package:quiz/features/onboarding/presentation/widgets/page_decoration.dart';

List<PageViewModel> pages = [
  PageViewModel(
    title: "",
    bodyWidget: const BodyWidget(
      path: 'assets/svgimages/Frame 8.svg',
      title: 'Welcome to the online\nE-Learning App',
      descreption:
          'This is an online school that allows\n you to rediscover yourself. Take the\n courses and be a better student',
    ),
    decoration: pageDecoration,
  ),
  PageViewModel(
    body: "",
    title: "",
    decoration: pageDecoration,
  ),
  PageViewModel(
    title: "",
    body: "",
    decoration: pageDecoration,
  ),
];
