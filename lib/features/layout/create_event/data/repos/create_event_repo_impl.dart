import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:evently/core/constants/constants.dart';
import 'package:evently/core/services/shared_prefs.dart';
import 'package:evently/features/layout/create_event/data/repos/create_event_repo.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';

class CreateEventRepoImpl implements CreateEventRepo {
  @override
  CollectionReference<Object?> getCollectionReference() {
    CollectionReference users = FirebaseFirestore.instance
        .collection(SharedPrefs.getString(key: Constants.userID));
    return users;
  }

  @override
  Either<void, String> createNewEvent(EventModel event) {
    try {
      CollectionReference reference = getCollectionReference();
      reference.add(event.toFirestore());
      return Left(null);
    } on FirebaseException catch (e) {
      return Right(e.toString());
    } catch (e) {
      return Right(e.toString());
    }
  }
}
