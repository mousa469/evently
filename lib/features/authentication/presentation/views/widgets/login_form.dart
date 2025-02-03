import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/helper/easy_loading.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/features/authentication/data/cubit/cubit/authentication_cubit.dart';
import 'package:evently/features/authentication/presentation/views/register.dart';
import 'package:evently/features/authentication/presentation/views/reset_password_view.dart';
import 'package:evently/features/authentication/presentation/views/widgets/custom_text_button.dart';
import 'package:evently/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationLoading) {
          CustomEasyLoading.showLoading();
        } else if (state is AuthenticationSuccess) {
          CustomEasyLoading.showSuccess("sign in successfully");
          context.pushNamedAndRemoveUntil(HomeView.id);
        } else if (state is AuthenticationFailure) {
          CustomEasyLoading.hideLoading();
          CustomEasyLoading.showError(state.failureMessage);
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            30.verticalSpace,
            CustomTextField(
              onValidate: (value) {
                if (value == null || value.isEmpty) {
                  return "field is required";
                }
                return null;
              },
              controller: emailController,
              prefixIcon: Icon(
                Icons.email,
                color: AppColors.gray,
              ),
              hint: "Email",
              hintColor: AppColors.gray,
            ),
            20.verticalSpace,
            CustomTextField(
              onValidate: (value) {
                if (value == null || value.isEmpty) {
                  return "field is required";
                }
                return null;
              },
              controller: passwordController,
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.gray,
              ),
              hint: "Password",
              hintColor: AppColors.gray,
              isPassword: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CustomTextButton(
                text: "Forget Password?",
                onPress: () {
                  context.pushNamed(ResetPasswordView.id);
                },
              ),
            ),
            16.verticalSpace,
            CustomButton(
              text: "Login",
              onPress: () {
                if (formKey.currentState!.validate()) {
                  context
                      .read<AuthenticationCubit>()
                      .signInWithEmailAndPassword(
                        emailController.text, // Pass the email
                        passwordController.text, // Pass the password
                      );
                }
              },
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t Have Account ? ",
                  style: AppStyles.textStyleMeduim16.copyWith(
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                CustomTextButton(
                  text: "Create Account ",
                  onPress: () {
                    context.pushNamed(RegisterView.id);
                  },
                ),
              ],
            ),
            16.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                ),
                Text(
                  "or",
                  style: AppStyles.textStyleMeduim16
                      .copyWith(color: AppColors.kPrimaryColor),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                ),
              ],
            ),
            16.verticalSpace,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                  side: BorderSide(color: AppColors.kPrimaryColor),
                ),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/google(1).png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    10.horizontalSpace,
                    Text(
                      "Login With Google",
                      style: AppStyles.textStyleMedium20
                          .copyWith(color: AppColors.kPrimaryColor),
                    ),
                    10.verticalSpace,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
