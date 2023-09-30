import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_with_google_state.freezed.dart';

@freezed
class SignInWithGoogleState with _$SignInWithGoogleState {
  const factory SignInWithGoogleState({
    @Default(false) bool isLoading,
    @Default('') String errorMessage,
  }) = _SignInWithGoogleState;
}
