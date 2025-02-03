import 'package:bloc/bloc.dart';
import 'package:either_dart/either.dart';
import 'package:evently/features/authentication/data/repos/auth_repo_implementation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  AuthRepoImplementation authRepoImplementation = AuthRepoImplementation();

  void signInWithEmailAndPassword(String email, String password) {
    emit(AuthenticationLoading());
    var result =
        authRepoImplementation.signInWithEmailAndPassword(email, password);
    result.fold((errorMessage) {
      emit(AuthenticationFailure(failureMessage: errorMessage));
    }, (userData) {
      emit(AuthenticationSuccess(userCredential: userData));
    });
  }

  void createUserWithEmailAndPassword(
      String email, String password, String name) {

      emit(AuthenticationLoading());
      var result = authRepoImplementation.createUserWithEmailAndPassword(
          email, password, name);
      result.fold((errorMessage) {
        emit(AuthenticationFailure(failureMessage: errorMessage));
      }, (userData) {
        emit(AuthenticationSuccess(userCredential: userData));
      });
  }
}
