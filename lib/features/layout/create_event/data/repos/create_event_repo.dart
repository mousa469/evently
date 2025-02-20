import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/either.dart';
import 'package:evently/features/layout/create_event/presentation/view_models/event_model.dart';

abstract class CreateEventRepo {
  CollectionReference getCollectionReference();
  Either<void, String>   createNewEvent(EventModel event);
}
