import 'package:evently/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
abstract class CustomEasyLoading {
  static void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle // Change loading animation
    ..loadingStyle = EasyLoadingStyle.custom // Use custom colors
    ..backgroundColor = AppColors.white // Background color
    ..indicatorColor = AppColors.kPrimaryColor// Loader color
    ..textColor = AppColors.black// Text color
    ..maskColor = Colors.black.withValues(alpha: 0.5) // Background mask
    ..userInteractions = false // Prevent user interaction while loading
    ..dismissOnTap = false; // Prevent dismiss on tap
}
 
   static void showLoading() {
  EasyLoading.show(status: 'Loading...' );
}

   static void hideLoading() {
  EasyLoading.dismiss();
}
   static void showError(String error) {
 EasyLoading.showError(error);
}
  static void showSuccess (String successMessage) {
          EasyLoading.showSuccess(successMessage);
}



}




