import 'package:flutter/material.dart';

class CategoryModel {
  final String itemName;
  final IconData itemIcon;
  final int index;

  CategoryModel({
    required this.itemName,
    required this.itemIcon,
    required this.index,
  });

  static List<CategoryModel> categoryList = [
    CategoryModel(index:0 , itemName: "All", itemIcon: Icons.explore_outlined),
    CategoryModel(
        index: 1, itemName: "Sport", itemIcon: Icons.directions_bike_outlined),
    CategoryModel(
        index: 2, itemName: "Birthday", itemIcon: Icons.cake_outlined),
    CategoryModel(
        index: 3, itemName: "Book Club", itemIcon: Icons.menu_book_outlined),
    CategoryModel(index: 4, itemName: "Meeting", itemIcon: Icons.group),
    CategoryModel(index: 5, itemName: "Gaming", itemIcon: Icons.sports_esports),
    CategoryModel(
        index: 6, itemName: "Work Shop", itemIcon: Icons.work_off_outlined),
    CategoryModel(
        index: 7, itemName: "Holiday", itemIcon: Icons.celebration_outlined),
    CategoryModel(index: 8, itemName: "eating", itemIcon: Icons.dining),
  ];
  static List<CategoryModel> eventCategoryList = [
    CategoryModel(
        index: 0, itemName: "Sport", itemIcon: Icons.directions_bike_outlined),
    CategoryModel(
        index: 1, itemName: "Birthday", itemIcon: Icons.cake_outlined),
    CategoryModel(
        index: 2, itemName: "Book Club", itemIcon: Icons.menu_book_outlined),
    CategoryModel(index: 3, itemName: "Meeting", itemIcon: Icons.group),
    CategoryModel(index: 4, itemName: "Gaming", itemIcon: Icons.sports_esports),
    CategoryModel(
        index: 5, itemName: "Work Shop", itemIcon: Icons.work_off_outlined),
    CategoryModel(
        index: 6, itemName: "Holiday", itemIcon: Icons.celebration_outlined),
    CategoryModel(index: 7, itemName: "eating", itemIcon: Icons.dining),
  ];
}
