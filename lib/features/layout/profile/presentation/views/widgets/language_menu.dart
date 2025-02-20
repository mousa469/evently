import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/core/helper/localization_provider.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LanguageMenu extends StatefulWidget {
  const LanguageMenu({super.key});

  @override
  State<LanguageMenu> createState() => _LanguageMenuState();
}

class _LanguageMenuState extends State<LanguageMenu> {
  String? selectedLanguage = "عربي";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LocalizationProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).Language,
          style:
              AppStyles.textStyleMedium20.copyWith(fontWeight: FontWeight.w700),
        ),
        16.verticalSpace(),
        SizedBox(
          width: double.infinity,
          child: DropdownMenu(
              onSelected: (value) {
                setState(() {
                  selectedLanguage = value;
                  if (selectedLanguage == "English" &&
                      provider.isEnglish == false) {
                    provider.changeLanguage();
                  } else if (selectedLanguage == "عربي" &&
                      provider.isEnglish == true) {
                    provider.changeLanguage();
                  }
                });
              },
              width: double.infinity,
              hintText: selectedLanguage,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: "English", label: "English"),
                DropdownMenuEntry(value: "عربي", label: "عربي")
              ]),
        )
      ],
    );
  }
}
