import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseEventLocation extends StatelessWidget {
  const ChooseEventLocation({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80.h,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: AppColors.kPrimaryColor),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Row(
          children: [
            Container(
              width: 50.w,
              height: 60.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.kPrimaryColor),
              child: Center(
                child: Icon(
                  Icons.my_location_outlined,
                  color: AppColors.white,
                ),
              ),
            ),
            6.horizontalSpace,
            Text(
              text,
              style: AppStyles.textStyleMeduim16
                  .copyWith(color: AppColors.kPrimaryColor),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: AppColors.kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}
