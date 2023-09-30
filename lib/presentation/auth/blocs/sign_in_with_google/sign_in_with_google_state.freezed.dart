// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_with_google_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInWithGoogleState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInWithGoogleStateCopyWith<SignInWithGoogleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithGoogleStateCopyWith<$Res> {
  factory $SignInWithGoogleStateCopyWith(SignInWithGoogleState value,
          $Res Function(SignInWithGoogleState) then) =
      _$SignInWithGoogleStateCopyWithImpl<$Res, SignInWithGoogleState>;
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class _$SignInWithGoogleStateCopyWithImpl<$Res,
        $Val extends SignInWithGoogleState>
    implements $SignInWithGoogleStateCopyWith<$Res> {
  _$SignInWithGoogleStateCopyWithImpl(this._value, this._then);

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
abstract class _$$SignInWithGoogleStateImplCopyWith<$Res>
    implements $SignInWithGoogleStateCopyWith<$Res> {
  factory _$$SignInWithGoogleStateImplCopyWith(
          _$SignInWithGoogleStateImpl value,
          $Res Function(_$SignInWithGoogleStateImpl) then) =
      __$$SignInWithGoogleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String errorMessage});
}

/// @nodoc
class __$$SignInWithGoogleStateImplCopyWithImpl<$Res>
    extends _$SignInWithGoogleStateCopyWithImpl<$Res,
        _$SignInWithGoogleStateImpl>
    implements _$$SignInWithGoogleStateImplCopyWith<$Res> {
  __$$SignInWithGoogleStateImplCopyWithImpl(_$SignInWithGoogleStateImpl _value,
      $Res Function(_$SignInWithGoogleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SignInWithGoogleStateImpl(
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

class _$SignInWithGoogleStateImpl implements _SignInWithGoogleState {
  const _$SignInWithGoogleStateImpl(
      {this.isLoading = false, this.errorMessage = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SignInWithGoogleState(isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGoogleStateImpl &&
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
  _$$SignInWithGoogleStateImplCopyWith<_$SignInWithGoogleStateImpl>
      get copyWith => __$$SignInWithGoogleStateImplCopyWithImpl<
          _$SignInWithGoogleStateImpl>(this, _$identity);
}

abstract class _SignInWithGoogleState implements SignInWithGoogleState {
  const factory _SignInWithGoogleState(
      {final bool isLoading,
      final String errorMessage}) = _$SignInWithGoogleStateImpl;

  @override
  bool get isLoading;
  @override
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithGoogleStateImplCopyWith<_$SignInWithGoogleStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
