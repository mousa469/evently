import 'package:either_dart/either.dart';
import 'package:evently/core/services/local%20storage/local_storage_services.dart';
import 'package:evently/features/authentication/data/repos/auth_repo.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepoImplementation extends AuthRepo {
  @override
  Future<Either<String, UserCredential>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return Left('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        return Left('Wrong password provided for that user.');
      } else {
        return Left('Invalid email or password');
      }
    } catch (e) {
      return Left('Invalid email or password');
    }
  }

  @override
  Future<Either<String, UserCredential>> createUserWithEmailAndPassword(
      String email, String password , String name) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      LocalStorageServices.storeUsersInfo(id: credential.user!.uid ,name:name );
      return Right(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        return Left("The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        return Left("The account already exists for that email");
      } else {
        return Left("Invalid email or password");
      }
    } catch (e) {
      return Left("Invalid email or password");
    }
  }
}
