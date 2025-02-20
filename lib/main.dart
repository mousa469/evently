import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/helper/easy_loading.dart';
import 'package:evently/core/helper/localization_provider.dart';
import 'package:evently/core/helper/theme_provider.dart';
import 'package:evently/core/routes/app_routes.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/features/layout/layout_view.dart';
import 'package:evently/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await SharedPrefs.init();
  CustomEasyLoading.configLoading();
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocalizationProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: ScreenUtilInit(
        designSize: Size(393, 841),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            localizationsDelegates: [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: Provider.of<LocalizationProvider>(context).isEnglish
                ? const Locale("en")
                : const Locale("ar"),
            onGenerateRoute: AppRoutes.onGenerateRoute,
            initialRoute: LayoutView.id,
            builder: EasyLoading.init(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: Provider.of<ThemeProvider>(context).isLight
                  ? Constants.lightColorScheme
                  : Constants.darkColorScheme,
              useMaterial3: true,
              textTheme: GoogleFonts.interTextTheme(
                ThemeData(
                        brightness: Provider.of<ThemeProvider>(context).isLight
                            ? Brightness.light
                            : Brightness.dark)
                    .textTheme,
              ),
            ),
          );
        },
      ),
    );
  }
}
