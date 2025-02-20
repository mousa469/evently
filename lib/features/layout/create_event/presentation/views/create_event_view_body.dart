import 'package:evently/core/extensions/space_extension.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/category_page_view.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/create_event_form.dart';
import 'package:evently/features/layout/create_event/presentation/views/widgets/event_category_list_view.dart';
import 'package:flutter/material.dart';

class CreateEventViewBody extends StatefulWidget {
  const CreateEventViewBody({super.key});

  @override
  State<CreateEventViewBody> createState() => _CreateEventViewBodyState();
}

class _CreateEventViewBodyState extends State<CreateEventViewBody> {
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CategoryPageView(
            currentIndex: currentIndex,
          ),
          12.verticalSpace(),
          EventCategoryListView(
            currentIndex: currentIndex,
            onIndexChanged: onIndexChanged,
          ),
          CreateEventForm(currentIndex: currentIndex,),
        ],
      ),
    );
  }
}
