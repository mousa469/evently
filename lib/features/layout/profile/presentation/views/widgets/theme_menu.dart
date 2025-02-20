import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/core/helper/theme_provider.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeMenu extends StatefulWidget {
  const ThemeMenu({super.key});

  @override
  State<ThemeMenu> createState() => _ThemeMenuState();
}

class _ThemeMenuState extends State<ThemeMenu> {
  String? selectedTheme = "Light";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).theme,
          style:
              AppStyles.textStyleMedium20.copyWith(fontWeight: FontWeight.w700),
        ),
        16.verticalSpace(),
        SizedBox(
          width: double.infinity,
          child: DropdownMenu(
              onSelected: (value) {
                setState(() {
                  selectedTheme = value;
                  if (selectedTheme == "Light" &&
                      provider.isLight == false) {
                    provider.changeTheme();
                  } else if (selectedTheme == "Dark" &&
                      provider.isLight == true) {
                    provider.changeTheme();
                  }
                });
              },
              width: double.infinity,
              hintText: selectedTheme,
              dropdownMenuEntries: [
                DropdownMenuEntry(value: "Light", label: "Light"),
                DropdownMenuEntry(value: "Dark", label: "Dark")
              ]),
        )
      ],
    );
  }
}
