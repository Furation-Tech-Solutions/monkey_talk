import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/main.dart';

import '../../../core/error/error_mappers.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';

abstract class AuthRemoteDS {
  Future<Either<Failure, UserCredential>> signInWithUsernameAndPassword(
    String email,
    String password,
  );

  Future<Either<Failure, UserCredential>> signInWithGoogle();

  Future<Either<Failure, UserCredential>> signInWithApple();

  Future<Either<Failure, void>> forgotPassword(
    String email,
  );

  registerWithEmailAndPassword(String email, String password) {}
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

  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential = await auth.signInWithCredential(credential);
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(
        mapFirebaseAuthExceptionToFailure(e),
      );
    }
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithApple() async {
    try {
      final UserCredential userCredential =
          await auth.signInWithProvider(AppleAuthProvider());
      return Right(userCredential);
    } on FirebaseAuthException catch (e) {
      return Left(
        mapFirebaseAuthExceptionToFailure(e),
      );
    }
  }

  @override
  Future<Either<Failure, UserCredential>> registerWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCred = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _appLogger.i('AuthRemoteDS Register with $email success');
      return Right(userCred);
    } on FirebaseAuthException catch (e) {
      _appLogger.e('AuthRemoteDS Register with $email failed', error: e);
      return Left(mapFirebaseAuthExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, void>> forgotPassword(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      _appLogger.i('AuthRemoteDS signin with $email success');
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      _appLogger.e('AuthRemoteDS signin with $email failed', error: e);
      return Left(mapFirebaseAuthExceptionToFailure(e));
    }
  }
}
