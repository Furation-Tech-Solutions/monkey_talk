
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failures.dart';

abstract class AuthRepo {

  Future<Either<Failure, UserCredential>> signInWithEmailAndPassoword({
    required String email,
    required String password,
  });


  // Future<Either<Failure, void>> signOut();

  // Future<Either<Failure, void>> forgotPassword({
  //   required String email,
  // });
}
