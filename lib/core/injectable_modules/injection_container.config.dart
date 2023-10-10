// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;
import 'package:monkey_talk/core/injectable_modules/firebase_injectable_module.dart'
    as _i20;
import 'package:monkey_talk/core/injectable_modules/hive_injectable_module.dart'
    as _i21;
import 'package:monkey_talk/core/injectable_modules/logger_injectable_module.dart'
    as _i22;
import 'package:monkey_talk/core/logger/applogger.dart' as _i7;
import 'package:monkey_talk/data/auth/datasources/auth_remote_data_source.dart'
    as _i8;
import 'package:monkey_talk/data/auth/repo_impl/auth_repo_impl.dart' as _i10;
import 'package:monkey_talk/domain/auth/repos/auth_repository.dart' as _i9;
import 'package:monkey_talk/domain/auth/usecase/forgot_password_usecase.dart'
    as _i11;
import 'package:monkey_talk/domain/auth/usecase/register_user_withEmailPassword_Usecase.dart'
    as _i13;
import 'package:monkey_talk/domain/auth/usecase/signin_with_apple_usecase.dart'
    as _i14;
import 'package:monkey_talk/domain/auth/usecase/signin_with_email_and_password_usecase.dart'
    as _i15;
import 'package:monkey_talk/domain/auth/usecase/signin_with_google_usecase.dart'
    as _i16;
import 'package:monkey_talk/presentation/auth/blocs/forgot_password/forgot_password_cubit.dart'
    as _i12;
import 'package:monkey_talk/presentation/auth/blocs/login/login_cubit.dart'
    as _i17;
import 'package:monkey_talk/presentation/auth/blocs/register/register_cubit.dart'
    as _i6;
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_apple/sign_in_with_apple_cubit.dart'
    as _i18;
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_google/sign_in_with_google_cubit.dart'
    as _i19;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    final hiveInjectableModule = _$HiveInjectableModule();
    final loggerInjectableModule = _$LoggerInjectableModule();
    gh.singleton<_i3.FirebaseAuth>(firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.HiveInterface>(() => hiveInjectableModule.hive);
    gh.lazySingleton<_i5.Logger>(() => loggerInjectableModule.logger);
    gh.factory<_i6.RegisterCubit>(() => _i6.RegisterCubit());
    gh.lazySingleton<_i7.AppLogger>(() => _i7.AppLoggerImpl(gh<_i5.Logger>()));
    gh.lazySingleton<_i8.AuthRemoteDataSource>(
        () => _i8.AuthRemoteDataSourceImpl(
              gh<_i3.FirebaseAuth>(),
              gh<_i7.AppLogger>(),
            ));
    gh.lazySingleton<_i9.AuthRepository>(() => _i10.AuthRepoImpl(
          remoteDS: gh<_i8.AuthRemoteDataSource>(),
          appLogger: gh<_i7.AppLogger>(),
          firebaseAuth: gh<_i3.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i11.ForgotPasswordUsecase>(
        () => _i11.ForgotPasswordUsecase(gh<_i9.AuthRepository>()));
    gh.factory<_i12.ForgotpasswordCubit>(() => _i12.ForgotpasswordCubit(
        forgotPasswordUsecase: gh<_i11.ForgotPasswordUsecase>()));
    gh.lazySingleton<_i13.RegisterWithEmailAndPasswordUseCase>(() =>
        _i13.RegisterWithEmailAndPasswordUseCase(gh<_i9.AuthRepository>()));
    gh.lazySingleton<_i14.SignInWithAppleUsecase>(
        () => _i14.SignInWithAppleUsecase(gh<_i9.AuthRepository>()));
    gh.lazySingleton<_i15.SignInWithEmailAndPasswordUsecase>(
        () => _i15.SignInWithEmailAndPasswordUsecase(gh<_i9.AuthRepository>()));
    gh.lazySingleton<_i16.SignInWithGoogleUsecase>(
        () => _i16.SignInWithGoogleUsecase(gh<_i9.AuthRepository>()));
    gh.factory<_i17.LoginCubit>(() => _i17.LoginCubit(
        signInWithEmailAndPasswordUsecase:
            gh<_i15.SignInWithEmailAndPasswordUsecase>()));
    gh.factory<_i18.SignInWithAppleCubit>(() => _i18.SignInWithAppleCubit(
        signInWithAppleUsecase: gh<_i14.SignInWithAppleUsecase>()));
    gh.factory<_i19.SignInWithGoogleCubit>(() => _i19.SignInWithGoogleCubit(
        signInWithGoogleUsecase: gh<_i16.SignInWithGoogleUsecase>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i21.HiveInjectableModule {}

class _$LoggerInjectableModule extends _i22.LoggerInjectableModule {}
