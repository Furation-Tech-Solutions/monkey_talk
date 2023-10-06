// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  String get email => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  String get recoNumber => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPass => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  dynamic get errorMesg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {String email,
      String number,
      String recoNumber,
      String password,
      String confirmPass,
      dynamic isLoading,
      dynamic errorMesg});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? number = null,
    Object? recoNumber = null,
    Object? password = null,
    Object? confirmPass = null,
    Object? isLoading = freezed,
    Object? errorMesg = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      recoNumber: null == recoNumber
          ? _value.recoNumber
          : recoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPass: null == confirmPass
          ? _value.confirmPass
          : confirmPass // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      errorMesg: freezed == errorMesg
          ? _value.errorMesg
          : errorMesg // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
          _$RegisterStateImpl value, $Res Function(_$RegisterStateImpl) then) =
      __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String number,
      String recoNumber,
      String password,
      String confirmPass,
      dynamic isLoading,
      dynamic errorMesg});
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
      _$RegisterStateImpl _value, $Res Function(_$RegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? number = null,
    Object? recoNumber = null,
    Object? password = null,
    Object? confirmPass = null,
    Object? isLoading = freezed,
    Object? errorMesg = freezed,
  }) {
    return _then(_$RegisterStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      recoNumber: null == recoNumber
          ? _value.recoNumber
          : recoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPass: null == confirmPass
          ? _value.confirmPass
          : confirmPass // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      errorMesg: freezed == errorMesg ? _value.errorMesg! : errorMesg,
    ));
  }
}

/// @nodoc

class _$RegisterStateImpl implements _RegisterState {
  const _$RegisterStateImpl(
      {this.email = '',
      this.number = '',
      this.recoNumber = '',
      this.password = '',
      this.confirmPass = '',
      this.isLoading = false,
      this.errorMesg = ''});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String number;
  @override
  @JsonKey()
  final String recoNumber;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPass;
  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final dynamic errorMesg;

  @override
  String toString() {
    return 'RegisterState(email: $email, number: $number, recoNumber: $recoNumber, password: $password, confirmPass: $confirmPass, isLoading: $isLoading, errorMesg: $errorMesg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.recoNumber, recoNumber) ||
                other.recoNumber == recoNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPass, confirmPass) ||
                other.confirmPass == confirmPass) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.errorMesg, errorMesg));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      number,
      recoNumber,
      password,
      confirmPass,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMesg));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final String email,
      final String number,
      final String recoNumber,
      final String password,
      final String confirmPass,
      final dynamic isLoading,
      final dynamic errorMesg}) = _$RegisterStateImpl;

  @override
  String get email;
  @override
  String get number;
  @override
  String get recoNumber;
  @override
  String get password;
  @override
  String get confirmPass;
  @override
  dynamic get isLoading;
  @override
  dynamic get errorMesg;
  @override
  @JsonKey(ignore: true)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
