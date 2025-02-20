import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/home_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategoryListView extends StatefulWidget {
  const HomeCategoryListView(
      {super.key, required this.currentIndex, required this.onIndexChanged});
  final int currentIndex;
  final Function(int) onIndexChanged;

  @override
  State<HomeCategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<HomeCategoryListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  widget.onIndexChanged(index);
                },
                child: HomeCategoryItem(
                  categoryModel: CategoryModel.getEventCategoryList(context)[index],
                  isSelected: widget.currentIndex == index,
                ));
          },
          separatorBuilder: (context, index) => 16.horizontalSpace,
          itemCount: CategoryModel.getEventCategoryList(context).length),
    );
  }
}
