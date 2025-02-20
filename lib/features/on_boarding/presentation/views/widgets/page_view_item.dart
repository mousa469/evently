import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/on_boarding/presentation/view_models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.onBoardingPageViewModel});

  final OnBoardingPageViewModel onBoardingPageViewModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.onBoardingLogo,
              width: context.screenWidth(0.5),
              height: context.screenHeight(0.1),
            ),
          ],
        ),
        16.verticalSpace(),
        Image.asset(
          onBoardingPageViewModel.img,
          width: context.screenWidth(0.9),
          height: context.screenHeight(0.5),
        ),
        24.verticalSpace(),
        Text(
          onBoardingPageViewModel.title,
          style: AppStyles.textStyleMedium20.copyWith(
              fontWeight: FontWeight.w700, color: AppColors.kPrimaryColor),
        ),
        24.verticalSpace(),
        onBoardingPageViewModel.subtitle,
        16.verticalSpace(),
      ],
    );
  }
}
