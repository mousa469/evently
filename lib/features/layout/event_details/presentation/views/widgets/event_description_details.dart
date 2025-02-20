import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDescriptionDetails extends StatelessWidget {
  const EventDescriptionDetails({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: AppStyles.textStyleMeduim16,
        ),
        6.verticalSpace,
        Text(
          description,
          style: AppStyles.textStyleMeduim16,
        ),
      ],
    );
  }
}
