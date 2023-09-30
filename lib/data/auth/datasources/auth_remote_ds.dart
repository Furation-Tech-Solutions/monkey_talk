import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/error_mappers.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';

abstract class AuthRemoteDS {
  Future<Either<Failure, UserCredential>> signInWithUsernameAndPassword(
    String email,
    String password,
  );
}

@LazySingleton(as: AuthRemoteDS)
class AuthRemoteDSImpl implements AuthRemoteDS {
  final FirebaseAuth _firebaseAuth;
  final AppLogger _appLogger;

  AuthRemoteDSImpl(
    this._firebaseAuth,
    this._appLogger,
  );

  @override
  Future<Either<Failure, UserCredential>> signInWithUsernameAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _appLogger.i('AuthRemoteDS signin with $email success');
      return Right(userCred);
    } on FirebaseAuthException catch (e) {
      _appLogger.e('AuthRemoteDS signin with $email failed', error: e);
      return Left(mapFirebaseAuthExceptionToFailure(e));
    }
  }
}
