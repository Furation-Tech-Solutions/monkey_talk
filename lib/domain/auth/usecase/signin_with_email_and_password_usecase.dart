import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/usecase/usecase_with_future.dart';
import 'package:monkey_talk/domain/auth/entities/user_entity.dart';
import '../repos/auth_repository.dart';

@LazySingleton()
class SignInWithEmailAndPasswordUsecase
    implements UsecaseWithFuture<UserEntity?, SignInParams> {
  final AuthRepository authRepo;

  SignInWithEmailAndPasswordUsecase(this.authRepo);

  @override
  Future<UserEntity?> call(SignInParams signInParams) {
    return authRepo.signInWithEmailAndPassoword(
        signInParams.email, signInParams.password);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
