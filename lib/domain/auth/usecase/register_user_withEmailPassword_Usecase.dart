import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecase/usecase_with_either.dart';
import '../repos/auth_repo.dart';

@LazySingleton()
class RegisterWithEmailAndPasswordUseCase
    implements UsecaseWithEither<UserCredential, RegisterParams> {
  final AuthRepo authRepo;

  RegisterWithEmailAndPasswordUseCase(this.authRepo);

  @override
  Future<UserEntity?> call(RegisterParams params) async {
    return await authRepo.registerWithEmailAndPassword(
      email: params.email,
      password: params.password,
    );
  }
}

class RegisterParams {
  final String email;
  final String password;

  RegisterParams({required this.email, required this.password});
}
