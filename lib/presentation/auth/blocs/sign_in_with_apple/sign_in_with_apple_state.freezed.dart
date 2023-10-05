// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_with_apple_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInWithAppleState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInWithAppleStateCopyWith<SignInWithAppleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithAppleStateCopyWith<$Res> {
  factory $SignInWithAppleStateCopyWith(SignInWithAppleState value,
          $Res Function(SignInWithAppleState) then) =
      _$SignInWithAppleStateCopyWithImpl<$Res, SignInWithAppleState>;
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class _$SignInWithAppleStateCopyWithImpl<$Res,
        $Val extends SignInWithAppleState>
    implements $SignInWithAppleStateCopyWith<$Res> {
  _$SignInWithAppleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInWithAppleStateImplCopyWith<$Res>
    implements $SignInWithAppleStateCopyWith<$Res> {
  factory _$$SignInWithAppleStateImplCopyWith(_$SignInWithAppleStateImpl value,
          $Res Function(_$SignInWithAppleStateImpl) then) =
      __$$SignInWithAppleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class __$$SignInWithAppleStateImplCopyWithImpl<$Res>
    extends _$SignInWithAppleStateCopyWithImpl<$Res, _$SignInWithAppleStateImpl>
    implements _$$SignInWithAppleStateImplCopyWith<$Res> {
  __$$SignInWithAppleStateImplCopyWithImpl(_$SignInWithAppleStateImpl _value,
      $Res Function(_$SignInWithAppleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SignInWithAppleStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithAppleStateImpl implements _SignInWithAppleState {
  const _$SignInWithAppleStateImpl(
      {this.isLoading = false, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SignInWithAppleState(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithAppleStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithAppleStateImplCopyWith<_$SignInWithAppleStateImpl>
      get copyWith =>
          __$$SignInWithAppleStateImplCopyWithImpl<_$SignInWithAppleStateImpl>(
              this, _$identity);
}

abstract class _SignInWithAppleState implements SignInWithAppleState {
  const factory _SignInWithAppleState(
      {final bool isLoading,
      final String errorMessage}) = _$SignInWithAppleStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithAppleStateImplCopyWith<_$SignInWithAppleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
