import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/error/failures.dart';
import 'package:monkey_talk/core/usecase/usecase_with_either.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';
import '../repos/auth_repository.dart';

@LazySingleton()
class SignInWithEmailAndPasswordUsecase
    implements UsecaseWithEither<UserEntity?, SignInParams> {
  final AuthRepository authRepository;

  SignInWithEmailAndPasswordUsecase(this.authRepository);

  @override
  Future<Either<Failure, UserEntity?>> call(SignInParams signInParams) {
    print('in usecase');
    return authRepository.signInWithEmailAndPassoword(
        signInParams.email, signInParams.password);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
