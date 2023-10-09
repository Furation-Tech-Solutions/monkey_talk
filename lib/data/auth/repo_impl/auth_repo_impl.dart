import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';
import '../../../domain/auth/entities/user_entity.dart';
import '../../../domain/auth/repos/auth_repo.dart';
import '../datasources/auth_remote_ds.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  AuthRepoImpl({
    required this.remoteDS,
    required this.appLogger,
  });

  final AuthRemoteDS remoteDS;
  final AppLogger appLogger;

  @override
  Future<Either<Failure, UserCredential>> signInWithEmailAndPassoword(
      {required String email, required String password}) async {
    return await remoteDS.signInWithUsernameAndPassword(email, password);
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithGoogle() async {
    return await remoteDS.signInWithGoogle();
  }

  @override
  Future<Either<Failure, UserCredential>> signInWithApple() async {
    return await remoteDS.signInWithApple();
  }

  @override
  Future<Either<Failure, void>> forgotPassword({
    required String email,
  }) async {
    return await remoteDS.forgotPassword(email);
  }

  @override
  Future<UserEntity?> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    return await remoteDS.registerWithEmailAndPassword(email, password);
  }
}
