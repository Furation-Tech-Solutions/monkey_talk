// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:monkey_talk/domain/auth/usecase/register_user_withEmailPassword_Usecase.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterWithEmailAndPasswordUseCase registerWithEmailAndPasswordUseCase;
  RegisterCubit(
    this.registerWithEmailAndPasswordUseCase,
  ) : super(const RegisterState());

  updateEmail(String email) {
    emit(state.copyWith(email: email));
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

  updateRecoNumber(String recoNum) {
    emit(state.copyWith(recoNumber: recoNum));
  }

  registerUser() {}
}
