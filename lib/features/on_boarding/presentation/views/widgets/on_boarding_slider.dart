import 'package:evently/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({super.key, required this.icon, required this.onPress});
  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.white,
          border: Border.all(color: AppColors.kPrimaryColor)),
      child: Center(
        child: IconButton(
            onPressed: onPress,
            icon: Icon(
              icon,
              color: AppColors.kPrimaryColor,
            )),
      ),
    );
  }
}
