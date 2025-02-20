part of 'create_event_cubit.dart';

@immutable
sealed class CreateEventState {}

final class CreateEventInitial extends CreateEventState {}

final class CreateEventSuccess extends CreateEventState {
  final String successMessage;

  CreateEventSuccess({required this.successMessage});
}

final class CreateEventFailure extends CreateEventState {
  final String errMessage;

  CreateEventFailure({required this.errMessage});
}

final class CreateEventLoading extends CreateEventState {}
