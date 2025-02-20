import 'package:evently/core/extensions/padding_extension.dart';
import 'package:evently/core/helper/localization_provider.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LocalizationSettingsBar extends StatefulWidget {
  const LocalizationSettingsBar({
    super.key,
    required this.firstItem,
    required this.secondItem,
  });

  final Widget firstItem;
  final Widget secondItem;

  @override
  State<LocalizationSettingsBar> createState() => _SettingsBarState();
}

class _SettingsBarState extends State<LocalizationSettingsBar> {
  @override
  Widget build(BuildContext context) {
    final localizationProvider =
        Provider.of<LocalizationProvider>(context, listen: true);
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
              localizationProvider.changeLanguage();
            },
            child: CircleAvatar(
                backgroundColor: localizationProvider.isEnglish
                    ? AppColors.kPrimaryColor
                    : AppColors.white,
                // backgroundColor: AppColors.kPrimaryColor,
                radius: 14,
                child: widget.firstItem),
          ),
          16.horizontalSpace,
          InkWell(
            onTap: () {
              localizationProvider.changeLanguage();
            },
            child: CircleAvatar(
              backgroundColor: localizationProvider.isEnglish
                  ? AppColors.white
                  : AppColors.kPrimaryColor,
              radius: 14,
              child: widget.secondItem,
            ),
          ),
        ],
      ),
    ).setVerticalPadding(8);
  }
}
