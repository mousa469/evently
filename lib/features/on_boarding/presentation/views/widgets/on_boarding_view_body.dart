import 'package:evently/core/extensions/padding_extension.dart';
import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/on_boarding_footer.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  int currentIndex = 0;

  void increaseIndex() {
    if (currentIndex != 3) {
      setState(() {
        ++currentIndex;
      });
    }
  }

  void decreaseIndex() {
    if (currentIndex != 0) {
      setState(() {
        --currentIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          OnBoardingPageView(
            currentIndex: currentIndex.toDouble(),
          ),
          OnBoardingFooter(
            increaseIndex: increaseIndex,
            decreaseIndex: decreaseIndex,
            currentIndex: currentIndex,
          ),
          8.verticalSpace(),
        ],
      ).setHorizontalPadding(16),
    );
  }
}
