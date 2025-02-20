import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/helper/easy_loading.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/core/widgets/custom_button.dart';
import 'package:evently/core/widgets/custom_text_form_field.dart';
import 'package:evently/features/authentication/data/cubit/cubit/authentication_cubit.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    rePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        if (state is AuthenticationFailure) {
          CustomEasyLoading.showError(state.failureMessage);
          CustomEasyLoading.hideLoading();
        } else if (state is AuthenticationLoading) {
          CustomEasyLoading.showLoading();
        } else if (state is AuthenticationSuccess) {
          CustomEasyLoading.showSuccess(S.of(context).emailcreatedsuccessfully);
          CustomEasyLoading.hideLoading();
          context.popUp();
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
                  return S.of(context).fieldIsRequired;
                }
                return null;
              },
              controller: nameController,
              prefixIcon: Icon(
                Icons.person,
                color: AppColors.gray,
              ),
              hint: S.of(context).Name,
              hintColor: AppColors.gray,
            ),
            20.verticalSpace,
            CustomTextField(
              onValidate: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldIsRequired;
                }
                return null;
              },
              controller: emailController,
              prefixIcon: Icon(
                Icons.email,
                color: AppColors.gray,
              ),
              hint: S.of(context).email,
              hintColor: AppColors.gray,
            ),
            20.verticalSpace,
            CustomTextField(
              onValidate: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldIsRequired;
                }
                return null;
              },
              controller: passwordController,
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.gray,
              ),
              hint: S.of(context).Password,
              hintColor: AppColors.gray,
              isPassword: true,
            ),
            20.verticalSpace,

            CustomTextField(
              onValidate: (value) {
                if (value == null || value.isEmpty) {
                  return S.of(context).fieldIsRequired;
                }
                return null;
              },
              controller: rePasswordController,
              prefixIcon: Icon(
                Icons.lock,
                color: AppColors.gray,
              ),
              hint: S.of(context).rePassword,
              hintColor: AppColors.gray,
              isPassword: true,
            ),
            // 5.verticalSpace(),
            16.verticalSpace,
            CustomButton(
              text: S.of(context).CreateAccount,
              onPress: () {
                if (formKey.currentState!.validate()) {
                  if (passwordController.text == rePasswordController.text) {
                    context
                        .read<AuthenticationCubit>()
                        .createUserWithEmailAndPassword(emailController.text,
                            passwordController.text, nameController.text);
                  } else {
                    CustomEasyLoading.showError(
                        S.of(context).Thepasswordsdonotmatch);
                  }
                }
              },
            ),

            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.of(context).AlreadyHaveAccountQuestion,
                  style: AppStyles.textStyleMeduim16
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                InkWell(
                  onTap: () {
                    context.popUp();
                  },
                  child: Text(
                    S.of(context).Login,
                    style: AppStyles.textStyleBold16.copyWith(
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.kPrimaryColor,
                        color: AppColors.kPrimaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
