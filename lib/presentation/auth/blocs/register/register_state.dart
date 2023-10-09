import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

import '../../../../core/utils.dart/validationModels/email_model.dart';
import '../../../../core/utils.dart/validationModels/password.dart';

final class RegisterState extends Equatable {
  const RegisterState({
    this.firstName = '',
    this.lastName = '',
    this.gender = 'Male',
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.confirmPasword = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });
  final String firstName;
  final String lastName;
  final String gender;

  final Email email;
  final Password password;
  final Password confirmPasword;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [
        email,
        password,
        status,
        isValid,
        errorMessage,
        confirmPasword,
        gender,
        firstName,
        lastName
      ];

  RegisterState copyWith(
      {Email? email,
      Password? password,
      FormzSubmissionStatus? status,
      bool? isValid,
      String? errorMessage,
      String? lastName,
      String? firstName,
      String? gender,
      Password? confirmPassword}) {
    return RegisterState(
        email: email ?? this.email,
        password: password ?? this.password,
        status: status ?? this.status,
        isValid: isValid ?? this.isValid,
        errorMessage: errorMessage ?? this.errorMessage,
        firstName: firstName ?? "",
        lastName: lastName ?? "",
        gender: gender ?? "",
        confirmPasword: confirmPassword ?? this.confirmPasword);
  }
}
