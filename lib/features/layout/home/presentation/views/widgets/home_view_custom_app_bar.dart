import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/Home_category_list_view.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewCustomAppBar extends StatefulWidget {
  const HomeViewCustomAppBar({super.key, required this.currentIndex, required this.onIndexChanged});
  final int  currentIndex;
  final   Function(int index) onIndexChanged ;

  @override
  State<HomeViewCustomAppBar> createState() => _HomeViewCustomAppBarState();
}

class _HomeViewCustomAppBarState extends State<HomeViewCustomAppBar> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: context.screenHeight(0.24),
      width: context.screenWidth(double.infinity),
      decoration: BoxDecoration(color: AppColors.kPrimaryColor),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                       S.of(context).WelcomeBack,
                        style: AppStyles.textStyle14.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.white),
                      ),
                      6.horizontalSpace,
                      Icon(
                        Icons.waving_hand,
                        color: Colors.amber,
                        size: 16,
                      )
                    ],
                  ),
                  Text(
                    SharedPrefs.getString(key: Constants.userName),
                    style: AppStyles.textStyle24W700
                        .copyWith(color: AppColors.white),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.light_mode,
                  color: AppColors.white,
                ),
              ),
              10.horizontalSpace,
              InkWell(
                onTap: () {},
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8)),
                  child: Center(
                      child: Text(
                    "EN",
                    style: AppStyles.textStyle14w700
                        .copyWith(color: AppColors.kPrimaryColor),
                  )),
                ),
              ),
            ],
          ),
          8.verticalSpace,
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: AppColors.white,
                size: 16,
              ),
              5.horizontalSpace,
              Text(
                "cairo,",
                style: AppStyles.textStyle14.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
              Text(
                "egypt",
                style: AppStyles.textStyle14.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          12.verticalSpace,
          HomeCategoryListView(
            currentIndex: widget.currentIndex,
            onIndexChanged: widget.onIndexChanged,
          )
        ],
      ),
    );
  }
}
