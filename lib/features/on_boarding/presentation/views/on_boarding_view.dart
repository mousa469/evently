import 'package:evently/features/on_boarding/presentation/views/widgets/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const String id = "onBoardingView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingViewBody());
  }
}
