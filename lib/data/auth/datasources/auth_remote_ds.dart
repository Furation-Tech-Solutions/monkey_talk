import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../core/error/failures.dart';

abstract class AuthRemoteDS {
  Future<Either<Failure, UserCredential>> signInWithUsernameAndPassword(
    String email,
    String password,
  );
}
