import 'package:evently/core/helper/easy_loading.dart';
import 'package:evently/features/authentication/presentation/views/login_view.dart';
import 'package:evently/features/authentication/presentation/views/register.dart';
import 'package:evently/features/authentication/presentation/views/reset_password_view.dart';
import 'package:evently/features/layout/create_event/presentation/views/create_event_view.dart';
import 'package:evently/features/layout/home/presentation/views/home_view.dart';
import 'package:evently/features/splash/presentation/splash_view.dart';
import 'package:evently/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
CustomEasyLoading.configLoading();
  runApp(const Evently());
}

class Evently extends StatelessWidget {
  const Evently({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 841),
      minTextAdapt: true,
      child: MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        routes: {
          SplashView.id: (context) => SplashView(),
          LoginView.id: (context) => LoginView(),
          RegisterView.id: (context) => RegisterView(),
          HomeView.id: (context) => HomeView(),
          ResetPasswordView.id: (context) => ResetPasswordView(),
          CreateEventView.id: (context) => CreateEventView(),
        },
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            textTheme: GoogleFonts.interTextTheme()),
        initialRoute: SplashView.id,
      ),
    );
  }
}
