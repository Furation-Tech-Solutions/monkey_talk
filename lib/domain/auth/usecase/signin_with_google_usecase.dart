import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecase/usecase_with_either.dart';
import '../repos/auth_repo.dart';

@LazySingleton()
class SignInWithGoogleUsecase implements UsecaseWithEither<UserCredential, void> {
  final AuthRepo authRepo;

  SignInWithGoogleUsecase(this.authRepo);

  @override
  Future<Either<Failure, UserCredential>> call(void params) async {
    return await authRepo.signInWithGoogle();
  }
}
