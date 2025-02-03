import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text,required this.onPress});
  final String text;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
        onPressed:onPress,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.h),
          child: Text(
            text,
            style: AppStyles.textStyleMedium20.copyWith(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
