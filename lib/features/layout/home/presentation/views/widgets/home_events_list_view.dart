import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card.dart';
import 'package:flutter/material.dart';

class HomeEventsListView extends StatefulWidget {
  const HomeEventsListView({super.key, required this.eventList});
  final List<EventModel> eventList;

  @override
  State<HomeEventsListView> createState() => _HomeEventsListViewState();
}

class _HomeEventsListViewState extends State<HomeEventsListView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: widget.eventList.length,
          itemBuilder: (context, index) {
            return EventCard(
              eventModel: widget.eventList[index],
            );
          }),
    );
  }
}
