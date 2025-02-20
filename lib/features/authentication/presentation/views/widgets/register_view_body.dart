import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/widgets/evently_logo.dart';
import 'package:evently/features/authentication/presentation/views/widgets/authentication_custom_app_bar.dart';
import 'package:evently/features/authentication/presentation/views/widgets/register_form.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.screenWidth(0.040)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthenticationCustomAppBar(
              text: S.of(context).Register,
            ),
            20.verticalSpace,
            EventlyLogo(),
            // LoginForm(),
            RegisterForm(),
          ],
        ),
      ),
    );
  }
}