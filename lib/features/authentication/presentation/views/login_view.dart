import 'package:evently/features/authentication/data/cubit/cubit/authentication_cubit.dart';
import 'package:evently/features/authentication/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String id = "/LoginView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: const Scaffold(
        body: LoginViewBody(),
      ),
    );
  }
}  

