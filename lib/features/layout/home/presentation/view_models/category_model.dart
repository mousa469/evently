import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/constants/constants.dart';
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

  static List<CategoryModel> getEventCategoryList = [
    CategoryModel(
      itemName: Constants.all,
      itemIcon: Icons.explore_outlined,
    ),
    CategoryModel(
        itemName: Constants.sports,
        itemIcon: Icons.directions_bike_outlined,
        img: AppAssets.sportCategory),
    CategoryModel(
        itemName: Constants.birthday,
        itemIcon: Icons.cake_outlined,
        img: AppAssets.birtdayCategory),
    CategoryModel(
        itemName: Constants.bookclub,
        itemIcon: Icons.menu_book_outlined,
        img: AppAssets.bookclubCategory),
    CategoryModel(
        itemName: Constants.meeting,
        itemIcon: Icons.group,
        img: AppAssets.meetingCategory),
    CategoryModel(
        itemName: Constants.gaming,
        itemIcon: Icons.sports_esports,
        img: AppAssets.gamingCategory),
    CategoryModel(
        itemName: Constants.workshop,
        itemIcon: Icons.work_off_outlined,
        img: AppAssets.workshopCategory),
    CategoryModel(
        itemName: Constants.holiday,
        itemIcon: Icons.celebration_outlined,
        img: AppAssets.holidayCategory),
    CategoryModel(
        itemName: Constants.eating,
        itemIcon: Icons.dining,
        img: AppAssets.eatingCategory),
  ];
}
