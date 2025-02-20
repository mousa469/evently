import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card_date_time.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCard extends StatefulWidget {
  const EventCard({super.key, required this.eventModel});
  final EventModel eventModel;

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  String img = '';
  @override
  void initState() {
    super.initState();
    fetchCardImg();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Container(
        width: 370.w,
        height: 300.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.kPrimaryColor, width: 2),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: EventCardDateTime(
                  day: widget.eventModel.eventDate,
                  month: widget.eventModel.eventTime,
                )),
            EventCardTitle(
              eventModel: widget.eventModel,
            ),
          ],
        ),
      ),
    );
  }

  fetchCardImg() {
    for (int i = 0; i < CategoryModel.getEventCategoryList(context).length; i++) {
      if (CategoryModel.getEventCategoryList(context)[i].itemName ==
          widget.eventModel.eventCategory) {
        if (CategoryModel.getEventCategoryList(context)[i].img != null) {
          img = CategoryModel.getEventCategoryList(context)[i].img!;
        } else {
          img = "assets/images/no_image.png";
        }
      }
    }
  }
}
