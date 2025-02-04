import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card_date_time.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370.w,
      height: 300.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.kPrimaryColor, width: 2),
        image: DecorationImage(
          image: AssetImage("assets/images/Birthday(2).png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(alignment: Alignment.topLeft, child: EventCardDateTime()),
          EventCardTitle(),
        ],
      ),
    );
  }
}
