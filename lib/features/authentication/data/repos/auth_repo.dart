import 'package:either_dart/either.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {
   Future<Either<String, UserCredential>> signInWithEmailAndPassword(String email, String password);
   Future<Either<String, UserCredential>> createUserWithEmailAndPassword(String email, String password , String name);
}
