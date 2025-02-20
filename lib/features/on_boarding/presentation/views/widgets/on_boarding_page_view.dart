import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/features/on_boarding/presentation/view_models/on_boarding_model.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key, required this.currentIndex});
  final double currentIndex;

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.currentIndex.toInt());
  }

  @override
  void didUpdateWidget(covariant OnBoardingPageView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      pageController.animateToPage(
        widget.currentIndex.toInt(),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.screenHeight(1.1),
      child: PageView.builder(
        controller: pageController,
        itemCount: OnBoardingPageViewModel.getOnBoardingPageViewModelList(context).length,
        itemBuilder: (context, index) {
          return PageViewItem(
            onBoardingPageViewModel:
                OnBoardingPageViewModel.getOnBoardingPageViewModelList(context)[index],
          );
        },
      ),
    );
  }
}
