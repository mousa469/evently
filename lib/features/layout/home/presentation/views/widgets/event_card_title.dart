import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class EventCardTitle extends StatelessWidget {
  const EventCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10 , horizontal: 5),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.white
        ),
        child: Row(
          children: [
            Text("This is a Birthday Party " , style: AppStyles.textStyle14w700,),
            Spacer(),
            Icon(Icons.favorite_outline_outlined , color: AppColors.kPrimaryColor,)
          ],
        ),
      ),
    );
  }
}