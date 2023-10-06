part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String number,
    @Default('') String recoNumber,
    @Default('') String password,
    @Default('') String confirmPass,
    @Default(false) isLoading,
    @Default('') errorMesg,
  }) = _RegisterState;
}
