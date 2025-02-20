import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/core/theme/app_colors.dart';
import 'package:evently/core/theme/app_styles.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EventCardTitle extends StatelessWidget {
  const EventCardTitle({
    super.key,
    required this.eventModel,
  });
  final EventModel eventModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: AppColors.white),
        child: Row(
          children: [
            SizedBox(
              width: 300.w,
              child: Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                eventModel.eventTitle,
                style: AppStyles.textStyle14w700,
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                updateFavorite(eventModel);
              },
              child: Icon(
                Icons.favorite_outline_outlined,
                color: AppColors.kPrimaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }

Future<void> updateFavorite(EventModel eventModel) async {
  try {
    CollectionReference userCollection = FirebaseFirestore.instance
        .collection(SharedPrefs.getString(key: Constants.userID));

    QuerySnapshot querySnapshot = await userCollection
        .where('eventID', isEqualTo: eventModel.eventID)
        .limit(1)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      String docID = querySnapshot.docs.first.id;

      await userCollection.doc(docID).update({
        "isFavorite": true,
      });
    } else {
      print('No event found with eventID: ${eventModel.eventID}');
    }
  } on FirebaseException catch (e) {
    print('Failed to update "isFavorite" for event ${eventModel.eventID}: ${e.message}');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
}
