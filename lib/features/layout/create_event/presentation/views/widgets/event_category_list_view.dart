import 'package:evently/features/layout/create_event/presentation/views/widgets/event_category_item.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCategoryListView extends StatefulWidget {
  const EventCategoryListView(
      {super.key, required this.currentIndex, required this.onIndexChanged});
  final int currentIndex;
  final Function(int) onIndexChanged;

  @override
  State<EventCategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<EventCategoryListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  widget.onIndexChanged(index);
                },
                child: EventCategoryItem(
                  categoryModel: CategoryModel.getEventCategoryList(context)[index+1],
                  isSelected: widget.currentIndex == index,
                ));
          },
          separatorBuilder: (context, index) => 16.horizontalSpace,
          itemCount: CategoryModel.getEventCategoryList(context).length -1
          ),
    );
  }
}
