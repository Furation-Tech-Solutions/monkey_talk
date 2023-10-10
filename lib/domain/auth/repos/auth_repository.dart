import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';

import '../../../core/error/failures.dart';

abstract class AuthRepository {
  Future<UserEntity?> signInWithEmailAndPassoword(
    String email,
    String password,
  );

// TODO:CREATE USERMODEL(NULLABLE)
// (IMPLE DEPENDS ON EXT PCKG)
  Future<Either<Failure, UserCredential>> signInWithGoogle();

  // Future<Either<Failure, void>> signOut();
  Future<Either<Failure, UserCredential>> signInWithApple();

  Future<Either<Failure, void>> forgotPassword({
    required String email,
  });

  Future<UserEntity?> registerWithEmailAndPassword({
    required String email,
    required String password,
  });
}
