part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class AuthenticationFailure extends AuthenticationState {
  final String failureMessage;

  AuthenticationFailure({required this.failureMessage});
}

final class AuthenticationSuccess extends AuthenticationState {
  final UserCredential userCredential;

  AuthenticationSuccess({required this.userCredential}); 
}

final class AuthenticationLoading extends AuthenticationState {}
