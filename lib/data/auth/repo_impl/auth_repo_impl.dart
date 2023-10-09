import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';
import '../../../core/error/failures.dart';
import '../../../core/logger/applogger.dart';
import '../../../domain/auth/repos/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepoImpl implements AuthRepository {
  AuthRepoImpl({
    required this.remoteDS,
    required this.appLogger,
    required this.firebaseAuth,
  });

  final AuthRemoteDataSource remoteDS;
  final AppLogger appLogger;
  final FirebaseAuth firebaseAuth;

  UserEntity? userFromFirebase(User? user) => user == null
      ? null
      : UserEntity(
          uid: user.uid, email: user.email, firstName: user.displayName);

  // @override
  // Future< UserModel> signInWithEmailAndPassoword(
  //     {required String email, required String password}) async {
  //   return await remoteDS.signInWithUsernameAndPassword(email, password);
  // }
  @override
  Future<UserEntity?> signInWithEmailAndPassoword(
      String email, String password) async {
    final userCred = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userFromFirebase(userCred.user);
  }

  // @override
  // UserEntity? currentUser() {
  //   return userFromFirebase(firebaseAuth.currentUser);
  // }

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
  Future<Either<Failure, UserCredential>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    return await remoteDS.registerWithEmailAndPassword(email, password);
  }
}
