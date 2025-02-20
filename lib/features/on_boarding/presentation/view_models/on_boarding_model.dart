import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/on_boarding_subtitle.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/localization_settings_bar.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/theme_setting_bar.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageViewModel {
  final String img;
  final String title;
  final Widget subtitle;

  OnBoardingPageViewModel({
    required this.img,
    required this.title,
    required this.subtitle,
  });

  static List<OnBoardingPageViewModel> getOnBoardingPageViewModelList(
      BuildContext context) {
    return [
      OnBoardingPageViewModel(
          img: AppAssets.onBoardingImg1,
          title: S.of(context).onBoardingFirstTitle,
          subtitle: Column(
            children: [
              OnBoardingSubtitle(text: S.of(context).onBoardingfirstSubTitle)
            ],
          )),
      OnBoardingPageViewModel(
          img: AppAssets.onBoardingImg2,
          title: S.of(context).onBoardingSecondTitle,
          subtitle: Column(
            children: [
              OnBoardingSubtitle(text: S.of(context).onBoardingSecondSubTitle)
            ],
          )),
      OnBoardingPageViewModel(
          img: AppAssets.onBoardingImg3,
          title: S.of(context).onBoardingThirdTitle,
          subtitle: Column(
            children: [
              OnBoardingSubtitle(text: S.of(context).onBoardingThirdSubTitle)
            ],
          )),
      OnBoardingPageViewModel(
        img: AppAssets.onBoardingImg4,
        title: S.of(context).onBoardingFourthTitle,
        subtitle: Column(
          children: [
            OnBoardingSubtitle(text: S.of(context).onBoardingFourthSubTitle),
            Row(
              children: [
                Text(
                  S.of(context).Language,
                  style: AppStyles.textStyleMedium20
                      .copyWith(color: AppColors.kPrimaryColor),
                ),
                Spacer(),
                LocalizationSettingsBar(
                  firstItem: Image.asset(
                    AppAssets.americaFlag,
                    width: 20,
                    height: 20,
                  ),
                  secondItem: Image.asset(
                    AppAssets.egyptFlag,
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            ),
            24.verticalSpace,
            Row(
              children: [
                Text(
                  S.of(context).theme,
                  style: AppStyles.textStyleMedium20
                      .copyWith(color: AppColors.kPrimaryColor),
                ),
                Spacer(),
                ThemeSettingBar()
              ],
            ),
          ],
        ),
      ),
    ];
  }
}
