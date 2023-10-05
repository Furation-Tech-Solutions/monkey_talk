import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_with_apple_state.freezed.dart';

@freezed
class SignInWithAppleState with _$SignInWithAppleState {
  const factory SignInWithAppleState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _SignInWithAppleState;
}
