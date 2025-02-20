import 'package:evently/features/authentication/presentation/views/login_view.dart';
import 'package:evently/features/authentication/presentation/views/register.dart';
import 'package:evently/features/authentication/presentation/views/reset_password_view.dart';
import 'package:evently/features/layout/create_event/presentation/views/create_event_view.dart';
import 'package:evently/features/layout/layout_view.dart';
import 'package:evently/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:evently/features/splash/presentation/splash_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return SplashView();
          },
        );
      case LoginView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return LoginView();
          },
        );
      case RegisterView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return RegisterView();
          },
        );
      case  LayoutView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return LayoutView();
          },
        );
      case  CreateEventView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return CreateEventView();
          },
        );
      case  OnBoardingView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return OnBoardingView();
          },
        );
      case  ResetPasswordView.id:
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return ResetPasswordView();
          },
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text("no route exist for this string"),
              ),
            );
          },
        );
    }
  }
}
