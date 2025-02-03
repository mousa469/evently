import 'package:evently/core/assets/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventlyLogo extends StatelessWidget {
  const EventlyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.eventlyLogoPng , width: 200.w, height: 200.h,);
  }
}