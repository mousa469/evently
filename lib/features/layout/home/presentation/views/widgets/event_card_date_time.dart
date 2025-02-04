import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCardDateTime extends StatelessWidget {
  const EventCardDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Container(
        width: 60.w,
        height: 70.h,
        decoration: BoxDecoration(
            color: AppColors.white, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Text(
              "21",
              style: AppStyles.textStyleMedium20.copyWith(
                  fontWeight: FontWeight.w700, color: AppColors.kPrimaryColor),
            ),
            Text(
              "Nov",
              style: AppStyles.textStyle14w700
                  .copyWith(color: AppColors.kPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
