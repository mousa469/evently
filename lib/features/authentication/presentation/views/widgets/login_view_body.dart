import 'package:evently/core/extensions/media_query_extension.dart';
import 'package:evently/core/widgets/evently_logo.dart';
import 'package:evently/features/authentication/presentation/views/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.screenWidth(0.040)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EventlyLogo(),
              LoginForm()
            ],
          ),
        ),
      ),
    );
  }
}
