import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:monkey_talk/domain/auth/usecase/register_user_withEmailPassword_Usecase.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_state.dart';

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  RegisterWithEmailAndPasswordUseCase registerWithEmailAndPasswordUseCase;
  RegisterCubit(
    this.registerWithEmailAndPasswordUseCase,
  ) : super(RegisterState());

  updateEmail(String email) {
    emit(state.copyWith(email: email));
  }

  updateFirstName(String firstname) {
    emit(state.copyWith(firstName: firstname));
  }

  updateLastName(String lastname) {
    emit(state.copyWith(lastName: lastname));
  }

  updatePhoneNumber(String number) {
    emit(state.copyWith(number: number));
  }

  updatePass(String password) {
    emit(state.copyWith(password: password));
  }

  updateConfirmPass(String confirmPassword) {
    emit(state.copyWith(confirmPass: confirmPassword));
  }

  registerUser() async {
    emit(state.copyWith(isLoading: true, errorMesg: ""));
    final resp = await registerWithEmailAndPasswordUseCase
        .call(RegisterParams(email: state.email, password: state.password));

    resp.fold(
        (l) => emit(state.copyWith(
            isLoading: false, errorMesg: "Failed : ${l.message}")),
        (r) => emit(state.copyWith(isLoading: false, errorMesg: "")));
  }

  updateImage(File? imageFile) {
    emit(state.copyWith(profileImage: imageFile));
    print("clicked Imag : ${state.profileImage?.path}");
  }
}


/*
import 'package:authentication_repository/authentication_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final AuthenticationRepository _authenticationRepository;

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([email, state.password]),
      ),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([state.email, password]),
      ),
    );
  }

  Future<void> logInWithCredentials() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithEmailAndPassword(
        email: state.email.value,
        password: state.password.value,
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }

  Future<void> logInWithGoogle() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.logInWithGoogle();
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithGoogleFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
*/