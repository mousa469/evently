import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDateTimeDetails extends StatelessWidget {
  const EventDateTimeDetails({super.key, required this.date, required this.time});

  final String date;
  final String time;

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
                  Icons.calendar_month,
                  color: AppColors.white,
                ),
              ),
            ),
            12.horizontalSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  date,
                  style: AppStyles.textStyleMeduim16
                      .copyWith(color: AppColors.kPrimaryColor),
                ),
                Text(
                  time,
                  style: AppStyles.textStyleMeduim16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
