import 'package:evently/core/assets/app_assets.dart';

class CategoryPageViewModel {
  final String img;

  CategoryPageViewModel({required this.img});

  static List<CategoryPageViewModel> categoryPageViewModelList = [
    CategoryPageViewModel(img: AppAssets.sportCategory),
    CategoryPageViewModel(img: AppAssets.birtdayCategory),
    CategoryPageViewModel(img:AppAssets.bookclubCategory),
    CategoryPageViewModel(img: AppAssets.meetingCategory),
    CategoryPageViewModel(img: AppAssets.gamingCategory),
    CategoryPageViewModel(img: AppAssets.workshopCategory),
    CategoryPageViewModel(img: AppAssets.holidayCategory),
    CategoryPageViewModel(img: AppAssets.eatingCategory),
  ];
}
