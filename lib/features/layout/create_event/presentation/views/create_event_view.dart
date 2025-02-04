import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/create_event_view_body.dart';
import 'package:flutter/material.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({super.key});
  static const String id = "/createEventView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
        title: Text("Create Event" , style: AppStyles.textStyle22W400.copyWith(color: AppColors.kPrimaryColor),) ,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child: const  CreateEventViewBody()),
    );
  }
}
