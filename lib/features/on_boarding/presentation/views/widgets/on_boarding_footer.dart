import 'package:dots_indicator/dots_indicator.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/features/authentication/presentation/views/login_view.dart';
import 'package:evently/features/on_boarding/presentation/view_models/on_boarding_model.dart';
import 'package:evently/features/on_boarding/presentation/views/widgets/on_boarding_slider.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnBoardingFooter extends StatelessWidget {
  const OnBoardingFooter(
      {super.key,
      required this.currentIndex,
      required this.increaseIndex,
      required this.decreaseIndex});
  final int currentIndex;
  final Function() increaseIndex;
  final Function() decreaseIndex;

  @override
  Widget build(BuildContext context) {
    return currentIndex == 3
        ? CustomButton(
            text: S.of(context).LetsStart,
            onPress: () {
              context.pushNamedAndRemoveUntil(LoginView.id);
              SharedPrefs.setBool(
                  key: Constants.isOnBoardingSeenBefore, value: true);
            })
        : Row(
            children: [
              Visibility(
                visible: currentIndex > 0,
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: OnBoardingSlider(
                  onPress: decreaseIndex,
                  icon: Icons.arrow_back,
                ),
              ),
              Spacer(),
              DotsIndicator(
                position: currentIndex.toDouble(),
                decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    activeColor: AppColors.kPrimaryColor,
                    color: AppColors.kPrimaryColor.withAlpha(100)),
                dotsCount:
                    OnBoardingPageViewModel.getOnBoardingPageViewModelList(context).length,
              ),
              Spacer(),
              OnBoardingSlider(
                onPress: increaseIndex,
                icon: Icons.arrow_forward,
              ),
            ],
          );
  }
}
