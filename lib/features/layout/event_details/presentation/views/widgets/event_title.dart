import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class EventTitle extends StatelessWidget {
  const EventTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      maxLines: 1,
      title,
      style:
          AppStyles.textStyle22Medium.copyWith(color: AppColors.kPrimaryColor),
    );
  }
}
