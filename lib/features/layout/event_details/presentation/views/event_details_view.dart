import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/event_details/presentation/views/widgets/event_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsView extends StatelessWidget {
  const EventDetailsView({super.key});
  static const String id = "/eventDeatils";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
          automaticallyImplyLeading: true,
          title: Text(
            "Event Details",
            style: AppStyles.textStyle22W400
                .copyWith(color: AppColors.kPrimaryColor),
          ),
          centerTitle: true,
          actions: [
            ImageIcon(
              AssetImage(AppAssets.editIcon),
              color: AppColors.kPrimaryColor,
              size: 18,
            ),
            12.horizontalSpace,
            ImageIcon(
              AssetImage(AppAssets.deleteIcon),
              color: Colors.red,
              size: 18,
            ),
          ]),
          body: SingleChildScrollView(child: const  EventDetailsViewBody()),
    );
  }
}
