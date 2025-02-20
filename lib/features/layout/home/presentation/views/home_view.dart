import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:evently/features/layout/home/presentation/view_models/category_model.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/home_events_list_view.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/home_view_custom_app_bar.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Stream<QuerySnapshot> usersStream = FirebaseFirestore.instance
      .collection(SharedPrefs.getString(key: Constants.userID))
      .snapshots();

  List<EventModel> eventsList = [];
  List<EventModel> filteredEventsList = [];
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
      _filterEventsByCategory(index);
    });
  }

  void _filterEventsByCategory(int categoryIndex) {
    setState(() {
      if (categoryIndex == 0) {
        filteredEventsList = List.from(eventsList);
      } else {
        String selectedCategory =
            CategoryModel.getEventCategoryList(context)[categoryIndex].itemName;
        filteredEventsList = eventsList.where((event) {
          return event.eventCategory == selectedCategory;
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: usersStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("An unexpected error occurred"),
          );
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.data == null || snapshot.data!.docs.isEmpty) {
          return Column(
            children: [
              HomeViewCustomAppBar(
                currentIndex: currentIndex,
                onIndexChanged: onIndexChanged,
              ),
              16.verticalSpace,
              Center(child: Text(S.of(context).noEventsCreatedYet)),
            ],
          );
        }

        // Populate events list
        eventsList = snapshot.data!.docs
            .map((event) =>
                EventModel.fromFirestore(event.data() as Map<String, dynamic>))
            .toList();

        // filteredEventsList = List.from(eventsList);

        // If there are no events after filtering
        if (filteredEventsList.isEmpty) {
          return Column(
            children: [
              HomeViewCustomAppBar(
                currentIndex: currentIndex,
                onIndexChanged: onIndexChanged,
              ),
              16.verticalSpace,
              Center(child: Text(S.of(context).noEventsCreatedYet)),
            ],
          );
        }

        return Column(
          children: [
            HomeViewCustomAppBar(
              currentIndex: currentIndex,
              onIndexChanged: onIndexChanged,
            ),
            16.verticalSpace,
            HomeEventsListView(
              eventList: currentIndex == 0 ? eventsList : filteredEventsList,
            ),
          ],
        );
      },
    );
  }
}
