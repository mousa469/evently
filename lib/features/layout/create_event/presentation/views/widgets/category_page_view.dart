import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/category_page_view_model.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CategoryPageView extends StatefulWidget {
  const CategoryPageView({super.key, required this.currentIndex});
  final int currentIndex;

  @override
  State<CategoryPageView> createState() => _CategoryPageViewState();
}

class _CategoryPageViewState extends State<CategoryPageView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.currentIndex);
  }

  @override
  void didUpdateWidget(covariant CategoryPageView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      pageController.jumpToPage(widget.currentIndex);
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight(0.3),
      child: PageView.builder(
        controller: pageController,
        onPageChanged: (value) {},
        scrollDirection: Axis.horizontal,
        itemCount: CategoryPageViewModel.categoryPageViewModelList.length,
        itemBuilder: (context, index) {
          return CategoryPageViewItem(
            img: CategoryPageViewModel.categoryPageViewModelList[index].img,
          );
        },
      ),
    );
  }
}
