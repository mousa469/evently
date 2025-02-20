import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/helper/localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      width: 124,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(1000),
            bottomRight: Radius.circular(1000),
            topRight: Provider.of<LocalizationProvider>(context).isEnglish
                ? Radius.circular(1000)
                : Radius.circular(0),
            topLeft: Provider.of<LocalizationProvider>(context).isEnglish
                ? Radius.circular(0)
                : Radius.circular(1000),
          )),
      child: Image.asset(AppAssets.americaFlag),
    );
  }
}
