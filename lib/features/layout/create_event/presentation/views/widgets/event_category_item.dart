import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:flutter/material.dart';

class EventCategoryItem extends StatefulWidget {
  const EventCategoryItem({super.key, required this.categoryModel, required this.currentIndex ,});

  final CategoryModel categoryModel ;
  final int  currentIndex ;

  @override
  State<EventCategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<EventCategoryItem> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        decoration: BoxDecoration(
            color: widget.currentIndex == widget.categoryModel.index ? AppColors.kPrimaryColor : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.kPrimaryColor)),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                widget.categoryModel.itemIcon,
                color: widget.currentIndex == widget.categoryModel.index ?  AppColors.white : AppColors.kPrimaryColor,
              ),
              5.horizontalSpace(),
              Text(
                widget.categoryModel.itemName,
                style: AppStyles.textStyleMeduim16
                    .copyWith(color:widget.currentIndex == widget.categoryModel.index ? AppColors.white : AppColors.kPrimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
