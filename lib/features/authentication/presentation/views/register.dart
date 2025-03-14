import 'package:evently/features/authentication/data/cubit/cubit/authentication_cubit.dart';
import 'package:evently/features/authentication/presentation/views/widgets/register_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const String id = '/registerView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthenticationCubit(),
      child: Scaffold(
        body: const RegisterViewBody(),
      ),
    );
  }
}
