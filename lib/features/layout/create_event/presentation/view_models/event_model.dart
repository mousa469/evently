class EventModel {
  final String eventID;
  final String eventTitle;
  final String eventDescription;
  final String eventDate;
  final String eventTime;
  final bool isFavorite;
  final String eventCategory;
  final String? eventLocation;

  EventModel(
      {required this.eventID,
      this.isFavorite = false,
      required this.eventTitle,
      required this.eventDescription,
      required this.eventDate,
      required this.eventTime,
      required this.eventCategory,
      this.eventLocation});

  factory EventModel.fromFirestore(Map<String, dynamic> eventMap) {
    return EventModel(
      eventID: eventMap["eventID"],
      isFavorite: eventMap["isFavorite"],
      eventTitle: eventMap["eventTitle"],
      eventDescription: eventMap["eventDescription"],
      eventDate: eventMap["eventDate"],
      eventTime: eventMap["eventTime"],
      eventCategory: eventMap["eventCategory"],
      eventLocation: eventMap["eventLocation"] ?? "null",
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "eventID": eventID,
      "isFavorite": isFavorite,
      "eventTitle": eventTitle,
      "eventDescription": eventDescription,
      "eventDate": eventDate,
      "eventTime": eventTime,
      "eventCategory": eventCategory,
      "eventLocation": eventLocation,
    };
  }
}
