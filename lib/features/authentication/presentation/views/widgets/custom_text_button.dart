import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.onPress, });

  final String text;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress ,
      child: Text(
        text,
        style: AppStyles.textStyleBold16.copyWith(
            decoration: TextDecoration.underline,
            decorationColor: AppColors.kPrimaryColor,
            color: AppColors.kPrimaryColor),
      ),
    );
  }
}
