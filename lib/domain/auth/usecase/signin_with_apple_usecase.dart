import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecase/usecase_with_either.dart';
import '../repos/auth_repository.dart';

@LazySingleton()
class SignInWithAppleUsecase
    implements UsecaseWithEither<UserCredential, void> {
  final AuthRepository authRepo;

  SignInWithAppleUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserCredential>> call(void params) async {
    return await authRepo.signInWithApple();
  }
}
