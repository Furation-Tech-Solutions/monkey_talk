import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_state.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    @Default('') String email,
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
    @Default(false) bool isSucess,
  }) = _ForgotPasswordState;
}

