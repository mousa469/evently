import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';

class HomeCategoryItem extends StatefulWidget {
  const HomeCategoryItem({super.key, required this.categoryModel, required this.isSelected,});

  final CategoryModel categoryModel ;
  final bool  isSelected ;

  @override
  State<HomeCategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<HomeCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
            color: widget.isSelected ? AppColors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.white)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                widget.categoryModel.itemIcon,
                color: widget.isSelected ?  AppColors.kPrimaryColor : AppColors.white,
              ),
              5.horizontalSpace(),
              Text(
                widget.categoryModel.itemName,
                style: AppStyles.textStyleMeduim16
                    .copyWith(color:widget.isSelected ? AppColors.kPrimaryColor : AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
