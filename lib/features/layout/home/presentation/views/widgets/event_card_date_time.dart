import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCardDateTime extends StatelessWidget {
  const EventCardDateTime({super.key, required this.day, required this.month});
  final String day;
  final String month;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: IntrinsicWidth(
        child: Container(
          width: 60.w,
          height: 70.h,
          decoration: BoxDecoration(
              color: AppColors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                day,
                style: AppStyles.textStyleMedium20.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.kPrimaryColor),
              ),
              Text(
                    maxLines: 1,
                overflow: TextOverflow.ellipsis,
                month,
                style: AppStyles.textStyle14w700
                    .copyWith(color: AppColors.kPrimaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
