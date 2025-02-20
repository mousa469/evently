import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/helper/localization_provider.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/profile/presentation/views/widgets/user_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileViewCustomAppBar extends StatelessWidget {
  const ProfileViewCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: context.screenHeight(.2),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Provider.of<LocalizationProvider>(context).isEnglish
                ? Radius.circular(65)
                : Radius.circular(0),
            bottomRight: Provider.of<LocalizationProvider>(context).isEnglish
                ? Radius.circular(0)
                : Radius.circular(65),
          ),
          color: AppColors.kPrimaryColor),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        children: [
          UserImage(),
          10.horizontalSpace,
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  SharedPrefs.getString(key: Constants.userName),
                  style: AppStyles.textStyle24W700
                      .copyWith(color: AppColors.white),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 200,
                child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  SharedPrefs.getString(key: Constants.userEmail),
                  style: AppStyles.textStyleMeduim16
                      .copyWith(color: AppColors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
