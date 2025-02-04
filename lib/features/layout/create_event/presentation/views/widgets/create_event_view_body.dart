import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/features/layout/create_event/data/toggle_cubit/toggle_category_cubit.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/category_page_view.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/create_event_form.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/event_category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateEventViewBody extends StatefulWidget {
  const CreateEventViewBody({super.key});

  @override
  State<CreateEventViewBody> createState() => _CreateEventViewBodyState();
}

class _CreateEventViewBodyState extends State<CreateEventViewBody> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleCategoryCubit(),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryPageView(),
              10.verticalSpace(),
              EventCategoryListView(),
               16.verticalSpace(),
              const CreateEventForm(),
            ],
          ),
        ),
      ),
    );
  }
}
