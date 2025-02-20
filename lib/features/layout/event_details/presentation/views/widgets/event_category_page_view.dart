import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/category_page_view_model.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class EventCategoryPageView extends StatefulWidget {
  const EventCategoryPageView({super.key});

  @override
  State<EventCategoryPageView> createState() => _EventCategoryPageViewState();
}

class _EventCategoryPageViewState extends State<EventCategoryPageView> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight(0.3),
      child: PageView.builder(
          onPageChanged: (value) {},
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: CategoryPageViewModel.categoryPageViewModelList.length,
          itemBuilder: (context, index) {
            return CategoryPageViewItem(
              img: CategoryPageViewModel.categoryPageViewModelList[index].img,
            );
          }),
    );
  }
}
