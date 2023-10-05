import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecase/usecase_with_either.dart';
import '../repos/auth_repo.dart';

@LazySingleton()
class SignInWithEmailAndPasswordUsecase
    implements UsecaseWithEither<UserCredential, SignInParams> {
  final AuthRepo authRepo;

  SignInWithEmailAndPasswordUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserCredential>> call(SignInParams params) async {
    return await authRepo.signInWithEmailAndPassoword(
      email: params.email,
      password: params.password,
    );
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
