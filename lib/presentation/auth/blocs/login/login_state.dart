part of 'login_cubit.dart';

// @freezed
final class LoginState extends Equatable {
  const LoginState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.failure,
  });
  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final bool isValid;
  final Failure? failure;

  @override
  List<Object?> get props => [email, password, status, isValid, failure];

  LoginState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    bool? isValid,
    Failure? failure,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      failure: failure ?? this.failure,
    );
  }
}
