// import 'package:dartz/dartz.dart';
// import 'package:injectable/injectable.dart';
// import 'package:monkey_talk/domain/auth/repos/auth_repository.dart';

// import '../../../core/error/failures.dart';
// import '../../../core/usecase/usecase_with_either.dart';

// @LazySingleton()
// class SignOutUsecase implements UsecaseWithEither<void, void> {
//   final AuthRepository authRepository;

//   SignOutUsecase(this.authRepository);

//   @override
//   Future<Either<Failure, void>> call(void params) async {
//     return await authRepository.signOut();
//   }
// }
