import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/exceptions/exception_codes.dart';
import 'package:monkey_talk/core/exceptions/exceptions.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';
import 'package:monkey_talk/main.dart';
import '../../../core/error/error_mappers.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';

abstract class AuthRemoteDataSource {
  UserEntity? currentUser();

  Future<UserEntity?> signInWithUsernameAndPassword(
    String email,
    String password,
  );

  // Future<void> signOut();

  Future<Either<Failure, UserCredential>> signInWithGoogle();

  Future<Either<Failure, UserCredential>> signInWithApple();

//TODO: only void will be returned
//TODO:remote ds
//TODO:DOMAIN SHOULD NOT BE DEPENDENT ON EXTERNAL PACKAGE
  Future<Either<Failure, void>> forgotPassword(
    String email,
  );

  registerWithEmailAndPassword(String email, String password) {}
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;
  final AppLogger _appLogger;

  AuthRemoteDataSourceImpl(
    this.firebaseAuth,
    this._appLogger,
  );

  UserEntity? userFromFirebase(User? user) => user == null
      ? null
      : UserEntity(
          uid: user.uid,
          displayName: user.displayName,
          email: user.email,
        );

  @override
  UserEntity? currentUser() {
    return userFromFirebase(firebaseAuth.currentUser);
  }

  @override
  Future<UserEntity?> signInWithUsernameAndPassword(
    String email,
    String password,
  ) async {
    try {
      final UserCredential userCred =
          await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      _appLogger.i('AuthRemoteDS signin with $email success');
      return userFromFirebase(userCred.user);
    } on SocketException catch (_) {
      throw NoInternetConnectionException();
    } on FirebaseAuthException catch (e) {
    
      if (e.code == ExceptionCodes.invalidEmail) {
        throw LogInWithEmailAndPasswordInvalidEmailException();
      } else if (e.code == ExceptionCodes.userDisabled) {
        throw LogInWithEmailAndPasswordUserDisabledException();
      } else if (e.code == ExceptionCodes.userNotFound) {
        throw LogInWithEmailAndPasswordUserNotFoundException();
      } else if (e.code == ExceptionCodes.wrongPassword) {
        throw LogInWithEmailAndPasswordWrongPasswordException();
      }
    } catch (_) {
      throw const LogInWithEmailAndPasswordException();
    }
    return null;
  }

  // @override
  // Future<Either<Failure, void>> signOut() async {
  //   try {
  //     await firebaseAuth.signOut();
  //   } on SocketException catch (_) {
  //     throw NoInternetConnectionException();
  //   }

  // }

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
      print("entered in creation of user : ");
      final userCred = await firebaseAuth.createUserWithEmailAndPassword(
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
      await firebaseAuth.sendPasswordResetEmail(email: email);
      _appLogger.i('AuthRemoteDS signin with $email success');
      return const Right(null);
    } on FirebaseAuthException catch (e) {
      _appLogger.e('AuthRemoteDS signin with $email failed', error: e);
      return Left(mapFirebaseAuthExceptionToFailure(e));
    }
  }
}
