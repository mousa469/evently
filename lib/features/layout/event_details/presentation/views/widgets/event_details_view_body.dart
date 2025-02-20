import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/choose_event_location.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/page_view_item.dart';
import 'package:evently/features/layout/event_details/presentation/views/widgets/event_date_time_details.dart';
import 'package:evently/features/layout/event_details/presentation/views/widgets/event_description_details.dart';
import 'package:evently/features/layout/event_details/presentation/views/widgets/event_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventDetailsViewBody extends StatelessWidget {
  const EventDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CategoryPageViewItem(img: AppAssets.gamingCategory),
          6.verticalSpace,
          EventTitle(title: "We Are Going To Play Football"),
          12.verticalSpace,
          EventDateTimeDetails(
            date: "21 November 2024 ",
            time: "12:12PM",
          ),
          12.verticalSpace,
          ChooseEventLocation(
            text: "Cairo , Egypt",
          ),
          12.verticalSpace,
          EventDescriptionDetails(
            description:
                "Lorem ipsum dolor sit amet consectetur. Vulputate eleifend suscipit eget neque senectus a. Nulla at non malesuada odio duis lectus amet nisi sit. Risus hac enim maecenas auctor et. At cras massa diam porta facilisi lacus purus. Iaculis eget quis ut amet. Sit ac malesuada nisi quis  feugiat.",
          )
        ],
      ),
    );
  }
}
