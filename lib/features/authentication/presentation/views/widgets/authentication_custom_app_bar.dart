import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthenticationCustomAppBar extends StatelessWidget {
  const AuthenticationCustomAppBar({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              context.popUp();
            },
            icon: Icon(Icons.arrow_back),
          ),
          100.horizontalSpace,
          Text(
            textAlign: TextAlign.center,
            text,
            style: AppStyles.textStyleMeduim16,
          ),
        ],
      ),
    );
  }
}
