import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/features/layout/profile/presentation/views/widgets/profile_form.dart';
import 'package:evently/features/layout/profile/presentation/views/widgets/profile_view_custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileViewCustomAppBar(),
        16.verticalSpace(),
        ProfileForm(),
      ],
    );
  }
}
