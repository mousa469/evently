import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension Space on num {
  Widget horizontalSpace() {
    return SizedBox(
      width: toDouble().w,
    );
  }
  Widget verticalSpace() {
    return SizedBox(
      height: toDouble().h,
    );
  }
}
