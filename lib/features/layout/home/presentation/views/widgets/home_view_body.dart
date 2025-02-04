import 'package:evently/features/layout/home/presentation/views/widgets/event_card.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/home_view_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeViewCustomAppBar(),
        16.verticalSpace,
        EventCard(),

      ],
    );
  }
}