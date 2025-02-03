import 'package:evently/features/authentication/presentation/views/widgets/reset_password_view_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  static const String id = "/resetPasswordView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResetPasswordViewBody(),
    );
  }
}
