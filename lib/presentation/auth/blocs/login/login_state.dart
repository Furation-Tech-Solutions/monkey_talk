import 'package:equatable/equatable.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/email_model.dart';
import 'package:monkey_talk/core/utils.dart/validationModels/password.dart';

part of 'login_cubit.dart';

@freezed
// class LoginState with _$LoginState {
//   const factory LoginState({
//     @Default('') String email,
//     @Default('') String password,
//     @Default(false) bool isLoading,
//     @Default('') String errorMessage,
//   }) = _LoginState;
// }
class LoginState extends Equatable {
  LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
  });
  Email email;
  Password password;
  final FormzSubmissionStatus status;

  @override
  List<Object> get props => <Object>[email, password,status];

  LoginState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
  }) {
    return LoginState(
        email: email ?? this.email, password: password ?? this.password,status: status ?? this.status );
  }
}
