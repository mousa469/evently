import 'package:evently/features/layout/create_event/data/toggle_cubit/toggle_category_cubit.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/event_category_item.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCategoryListView extends StatefulWidget {
  const EventCategoryListView({super.key});

  @override
  State<EventCategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<EventCategoryListView> {
  int currentIndex = 0;
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
                  setState(() {
                    currentIndex = index;
                    BlocProvider.of<ToggleCategoryCubit>(context).index = index;
                    BlocProvider.of<ToggleCategoryCubit>(context).toggleCategory();
                  });
                },
                child: EventCategoryItem(
                  categoryModel: CategoryModel.eventCategoryList[index],
                  currentIndex: currentIndex,
                ));
          },
          separatorBuilder: (context, index) => 16.horizontalSpace,
          itemCount: CategoryModel.eventCategoryList.length),
    );
  }
}
