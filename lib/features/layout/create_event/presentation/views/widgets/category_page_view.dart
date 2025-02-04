import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/features/layout/create_event/data/toggle_cubit/toggle_category_cubit.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/category_page_view_model.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPageView extends StatefulWidget {
  const CategoryPageView({super.key});

  @override
  State<CategoryPageView> createState() => _CategoryPageViewState();
}

class _CategoryPageViewState extends State<CategoryPageView> {
  PageController pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToggleCategoryCubit, ToggleCategoryState>(
      builder: (context, state) {
        if (state is ToggleCategorySucces) {
          navigatePage(state.index);
        }
        return SizedBox(
          height: context.screenHeight(0.3),
          child: PageView.builder(
              onPageChanged: (value) {},
              controller: pageController,
              scrollDirection: Axis.horizontal,
              itemCount: CategoryPageViewModel.categoryPageViewModelList.length,
              itemBuilder: (context, index) {
                return CategoryPageViewItem(
                  img: CategoryPageViewModel
                      .categoryPageViewModelList[index].img,
                );
              }),
        );
      },
    );
  }

  void navigatePage(int index) {
    pageController.animateToPage(
      index,
      duration: Duration(microseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
