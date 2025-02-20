import 'package:animate_do/animate_do.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/extensions/routing_extension.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/widgets/evently_logo.dart';
import 'package:evently/features/layout/layout_view.dart';
import 'package:evently/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = "/splashView";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      if (SharedPrefs.getBool(key: Constants.isLoginBefore) ?? false) {
        context.pushReplacement(LayoutView.id);
      } else {
        context.pushReplacement(OnBoardingView.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ZoomIn(child: EventlyLogo())],
      ),
    );
  }
}
