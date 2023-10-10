import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error/failures.dart';
import '../../../core/usecase/usecase_with_either.dart';
import '../repos/auth_repository.dart';

@LazySingleton()
class ForgotPasswordUsecase
    implements UsecaseWithEither<void, ForgotPasswordParams> {
  final AuthRepository authRepo;

  ForgotPasswordUsecase(this.authRepo);

  @override
  Future<Either<Failure, void>> call(ForgotPasswordParams params) async {
    return await authRepo.forgotPassword(
      email: params.email,
    );
  }
}

class ForgotPasswordParams {
  final String email;
  ForgotPasswordParams({required this.email});
}
