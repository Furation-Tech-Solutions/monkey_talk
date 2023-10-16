import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/email_model.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/password.dart';
import '../../../../core/error/failures.dart';
import '../../../../domain/auth/entities/user_entity.dart';
import '../../../../domain/auth/usecase/signin_with_email_and_password_usecase.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final SignInWithEmailAndPasswordUsecase signInWithEmailAndPasswordUsecase;

  LoginCubit({required this.signInWithEmailAndPasswordUsecase})
      : super(const LoginState());

  void emailChanged(String value) {
    final Email email = Email.dirty(
      value,
    );
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final Password password = Password.dirty(
      value,
    );
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  // Future<void> login() async {
  //   emit(state.copyWith(isLoading: true, errorMessage: ''));
  //   final signInResult = await signInWithEmailAndPasswordUsecase.call(
  //     SignInParams(email: state.email, password: state.password),
  //   );
  //   signInResult.fold(
  //     (failure) {
  //       emit(state.copyWith(
  //           isLoading: false,
  //           errorMessage: failure.message ?? 'Sign in failed'));
  //     },
  //     (userCredential) {
  //       emit(state.copyWith(
  //         isLoading: false,
  //       ));
  //     },
  //   );
  // }

  void login() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    // emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    final Either<Failure, UserEntity?> signInResult =
        await signInWithEmailAndPasswordUsecase.call(
      SignInParams(
        email: state.email.value,
        password: state.password.value,
      ),
    );
    emit(state.copyWith(
      status: FormzSubmissionStatus.success,
    ));
    signInResult.fold(
      (Failure failure) {
        debugPrint(failure.toString());
        emit(
          state.copyWith(
            failure: failure,
            status: FormzSubmissionStatus.failure,
          ),
        );
      },
      (userCredential) {
        debugPrint(userCredential?.uid.toString());
        emit(
          state.copyWith(
            status: FormzSubmissionStatus.success,
          ),
        );
      },
    );
  }

  // void login() async {
  //   if (state.isValid) {
  //     emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
  //     try {
  //       await signInWithEmailAndPasswordUsecase.call(
  //         SignInParams(
  //           email: state.email.value,
  //           password: state.password.value,
  //         ),
  //       );
  //       emit(
  //         state.copyWith(
  //           status: FormzSubmissionStatus.success,
  //         ),
  //       );
  //     } catch (_) {
  //       emit(
  //         state.copyWith(
  //            failure: failure,
  //           status: FormzSubmissionStatus.failure,
  //         ),
  //       );
  //     }
  //   }
  // }
}
