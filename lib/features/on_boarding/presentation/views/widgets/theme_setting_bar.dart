import 'package:evently/core/extensions/padding_extension.dart';
import 'package:evently/core/helper/theme_provider.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ThemeSettingBar extends StatefulWidget {
  const ThemeSettingBar({
    super.key,
  });

  @override
  State<ThemeSettingBar> createState() => _SettingsBarState();
}

class _SettingsBarState extends State<ThemeSettingBar> {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context, listen: true);
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          border: Border.all(
            color: AppColors.kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme();
            },
            child: CircleAvatar(
                backgroundColor: themeProvider.isLight
                    ? AppColors.kPrimaryColor
                    : AppColors.white,
                // backgroundColor: AppColors.kPrimaryColor,
                radius: 14,
                child: Icon(
                  Icons.light_mode,
                  color: themeProvider.isLight
                      ? AppColors.white
                      : AppColors.kPrimaryColor,
                )),
          ),
          16.horizontalSpace,
          InkWell(
            onTap: () {
              themeProvider.changeTheme();
            },
            child: CircleAvatar(
              backgroundColor: themeProvider.isLight
                  ? AppColors.white
                  : AppColors.kPrimaryColor,
              radius: 14,
              child: Icon(
                Icons.dark_mode,
                color: themeProvider.isLight
                    ? AppColors.kPrimaryColor
                    : AppColors.white,
              ),
            ),
          ),
        ],
      ),
    ).setVerticalPadding(8);
  }
}
