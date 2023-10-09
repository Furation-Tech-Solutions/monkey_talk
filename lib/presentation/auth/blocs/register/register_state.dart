import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:io';
part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default('') String email,
    @Default('') String number,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String password,
    @Default('') String confirmPass,
    @Default(null) File? profileImage,
    @Default(false) isLoading,
    @Default('') errorMesg,
  }) = _RegisterState;
}
