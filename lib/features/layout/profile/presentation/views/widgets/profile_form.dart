import 'package:evently/core/extensions/padding_extension.dart';
import 'package:evently/features/layout/profile/presentation/views/widgets/language_menu.dart';
import 'package:evently/features/layout/profile/presentation/views/widgets/theme_menu.dart';
import 'package:flutter/material.dart';

class ProfileForm extends StatefulWidget {
  const ProfileForm({super.key});

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LanguageMenu(),
        ThemeMenu()
        ],
    ).setHorizontalPadding(16);
  }
}
