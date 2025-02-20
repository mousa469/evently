import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  final String itemName;
  final IconData itemIcon;
  final String? img;

  CategoryModel({
    this.img,
    required this.itemName,
    required this.itemIcon,
  });

  static List<CategoryModel> getEventCategoryList  (BuildContext context){
    return [
    CategoryModel(itemName: S.of(context).All, itemIcon: Icons.explore_outlined ,  ),
    CategoryModel(
        itemName: S.of(context).sport, itemIcon: Icons.directions_bike_outlined , img: AppAssets.sportCategory),
    CategoryModel(itemName: S.of(context).Birthday, itemIcon: Icons.cake_outlined , img: AppAssets.birtdayCategory),
    CategoryModel(
        itemName: S.of(context).BookClub, itemIcon: Icons.menu_book_outlined , img: AppAssets.bookclubCategory),
    CategoryModel(itemName: S.of(context).Meeting, itemIcon: Icons.group , img: AppAssets.meetingCategory),
    CategoryModel(itemName: S.of(context).Gaming, itemIcon: Icons.sports_esports , img: AppAssets.gamingCategory),
    CategoryModel(
        itemName: S.of(context).WorkShop, itemIcon: Icons.work_off_outlined , img: AppAssets.workshopCategory),
    CategoryModel(
        itemName: S.of(context).Holiday, itemIcon: Icons.celebration_outlined , img: AppAssets.holidayCategory),
    CategoryModel(itemName: S.of(context).Eating, itemIcon: Icons.dining , img: AppAssets.eatingCategory),
  ];
  }  
}
