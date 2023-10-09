import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:monkey_talk/core/error/failures.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/email_model.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/password.dart';
import '../../../../domain/auth/usecase/signin_with_email_and_password_usecase.dart';
part 'login_state.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  final SignInWithEmailAndPasswordUsecase signInWithEmailAndPasswordUsecase;

  LoginCubit({required this.signInWithEmailAndPasswordUsecase})
      : super(LoginState());

  // void emailChanged(String email) {
  //   emit(state.copyWith(email: email));
  // }

  void emailChanged(String value) {
    final Email email = Email.dirty(
      value,
    );
    emit(
      state.copyWith(
        email: email,
        // status: Formz.validate(
        //   <FormzInput<dynamic, dynamic>>[
        //     username,
        //   ],
        // ),
      ),
    );
  }

  // void passwordChanged(String password) {
  //   emit(state.copyWith(password: password));
  // }

  void passwordChanged(String value) {
    final Password password = Password.dirty(
      value,
    );
    emit(
      state.copyWith(
        password: password,
        // status: Formz.validate(
        //   <FormzInput<dynamic, dynamic>>[
        //     username,
        //   ],
        // ),
      ),
    );
  }

  Future<void> login() async {
    emit(state.copyWith(isLoading: true, errorMessage: ''));
    final signInResult = await signInWithEmailAndPasswordUsecase.call(
      SignInParams(email: state.email, password: state.password),
    );
    signInResult.fold(
      (failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage: failure.message ?? 'Sign in failed'));
      },
      (userCredential) {
        emit(state.copyWith(
          isLoading: false,
        ));
      },
    );
  }

  Future<void> login() async {
    if (state.status.isInProgress) {
      return;
    }
    emit(
      state.copyWith(status: FormzSubmissionStatus.inProgress),
    );
    final signInResult = await signInWithEmailAndPasswordUsecase.call(
      SignInParams(email: state.email.value, password: state.password.value),
    );
    signInResult!.fold(
      (Failure failure) => emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
        ),
      ),
      (userCredential) => emit(
        state.copyWith(
          status: FormzSubmissionStatus.success,
        ),
      ),
    );
  }
}
