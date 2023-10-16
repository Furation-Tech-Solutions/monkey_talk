import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/exceptions/exceptions.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';
import '../../../domain/auth/repos/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepoImpl implements AuthRepository {
  AuthRepoImpl({
    required this.authRemoteDataSource,
    required this.appLogger,
  });

  final AuthRemoteDataSource authRemoteDataSource;
  final AppLogger appLogger;

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassoword(
      String email, String password) async {
    try {
      UserEntity? user = await authRemoteDataSource
          .signInWithUsernameAndPassword(email, password);
      return Right<Failure, UserEntity>(user!);
    } on SocketException {
      return const Left<Failure, UserEntity>(NoInternetConnectionFailure());
    } on LogInWithEmailAndPasswordInvalidEmailException {
      return Left<Failure, UserEntity>(
          LogInWithEmailAndPasswordInvalidEmailFailure());
    } on LogInWithEmailAndPasswordUserDisabledException {
      return Left<Failure, UserEntity>(
          LogInWithEmailAndPasswordUserDisabledFailure());
    } on LogInWithEmailAndPasswordUserNotFoundException {
      return Left<Failure, UserEntity>(
          LogInWithEmailAndPasswordUserNotFoundFailure());
    } on LogInWithEmailAndPasswordWrongPasswordException {
      return Left<Failure, UserEntity>(
          LogInWithEmailAndPasswordWrongPasswordFailure());
    }
  }

//  @override
//   Future<Either<Failure, void>> signOut() {
//    try{
//     authRemoteDataSource.signOut();
//    }on SocketException{
//      return const Left<Failure, void>(NoInternetConnectionFailure());
//    }
//   }

  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    return await authRemoteDataSource.signInWithGoogle();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithApple() async {
    return await authRemoteDataSource.signInWithApple();
  }

  @override
  Future<Either<Failure, void>> forgotPassword({
    required String email,
  }) async {
    return await authRemoteDataSource.forgotPassword(email);
  }

  @override
  Future<Either<Failure, UserCredential>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    return await authRemoteDataSource.registerWithEmailAndPassword(
        email, password);
  }
}
