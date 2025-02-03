import 'package:evently/core/assets/app_assets.dart';
import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/features/authentication/presentation/views/widgets/authentication_custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AuthenticationCustomAppBar(
            text:"Forget Password" ,
          ),
          Image.asset(AppAssets.resetPassword , width: context.screenWidth(0.9),),
          30.verticalSpace,
          Padding(padding: EdgeInsets.symmetric(horizontal: 10), child: CustomButton(text: "Reset Password", onPress: (){}))
        ],
      ),
    );
  }
}
