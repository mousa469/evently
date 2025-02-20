import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:evently/features/layout/home/presentation/views/widgets/event_card.dart';
import 'package:evently/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoveView extends StatefulWidget {
  const LoveView({super.key});

  @override
  State<LoveView> createState() => _LoveViewState();
}

class _LoveViewState extends State<LoveView> {
  final userStream = FirebaseFirestore.instance
      .collection(SharedPrefs.getString(key: Constants.userID))
      .snapshots();

  List<EventModel> favoriteEventsList = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: userStream,
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
            return Center(child: Text(S.of(context).NoFavoriteEventsYet));
          }

          for (var event in snapshot.data!.docs) {
            favoriteEventsList.add(EventModel.fromFirestore(event.data()));
          }

          return ListView.builder(
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, Index) {
                return EventCard(eventModel: favoriteEventsList[Index]);
              });
        });
  }
}
