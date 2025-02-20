import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class OnBoardingSubtitle extends StatelessWidget {
  const OnBoardingSubtitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.textStyleBold16,
    );
  }
}
