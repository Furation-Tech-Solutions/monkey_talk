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
    as _i17;
import 'package:monkey_talk/core/injectable_modules/hive_injectable_module.dart'
    as _i18;
import 'package:monkey_talk/core/injectable_modules/logger_injectable_module.dart'
    as _i19;
import 'package:monkey_talk/core/logger/applogger.dart' as _i6;
import 'package:monkey_talk/data/auth/datasources/auth_remote_ds.dart' as _i8;
import 'package:monkey_talk/data/auth/repo_impl/auth_repo_impl.dart' as _i10;
import 'package:monkey_talk/domain/auth/repos/auth_repo.dart' as _i9;
import 'package:monkey_talk/domain/auth/usecase/forgot_password_usecase.dart'
    as _i11;
import 'package:monkey_talk/domain/auth/usecase/signinwithemailandpassword.dart'
    as _i13;
import 'package:monkey_talk/domain/auth/usecase/signinwithgoogle.dart' as _i14;
import 'package:monkey_talk/presentation/auth/blocs/auth/auth_cubit.dart'
    as _i7;
import 'package:monkey_talk/presentation/auth/blocs/forgot_password/forgot_password_cubit.dart'
    as _i12;
import 'package:monkey_talk/presentation/auth/blocs/login/login_cubit.dart'
    as _i15;
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_google/sign_in_with_google_cubit.dart'
    as _i16;

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
    gh.lazySingleton<_i6.AppLogger>(() => _i6.AppLoggerImpl(gh<_i5.Logger>()));
    gh.singleton<_i7.AuthCubit>(_i7.AuthCubit(
      gh<_i3.FirebaseAuth>(),
      gh<_i4.HiveInterface>(),
      gh<_i6.AppLogger>(),
    ));
    gh.lazySingleton<_i8.AuthRemoteDS>(() => _i8.AuthRemoteDSImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i6.AppLogger>(),
        ));
    gh.lazySingleton<_i9.AuthRepo>(() => _i10.AuthRepoImpl(
          remoteDS: gh<_i8.AuthRemoteDS>(),
          appLogger: gh<_i6.AppLogger>(),
        ));
    gh.lazySingleton<_i11.ForgotPasswordUsecase>(
        () => _i11.ForgotPasswordUsecase(gh<_i9.AuthRepo>()));
    gh.factory<_i12.ForgotpasswordCubit>(() => _i12.ForgotpasswordCubit(
        forgotPasswordUsecase: gh<_i11.ForgotPasswordUsecase>()));
    gh.lazySingleton<_i13.SignInWithEmailAndPasswordUsecase>(
        () => _i13.SignInWithEmailAndPasswordUsecase(gh<_i9.AuthRepo>()));
    gh.lazySingleton<_i14.SignInWithGoogleUsecase>(
        () => _i14.SignInWithGoogleUsecase(gh<_i9.AuthRepo>()));
    gh.factory<_i15.LoginCubit>(() => _i15.LoginCubit(
        signInWithEmailAndPasswordUsecase:
            gh<_i13.SignInWithEmailAndPasswordUsecase>()));
    gh.factory<_i16.SignInWithGoogleCubit>(() => _i16.SignInWithGoogleCubit(
        signInWithGoogleUsecase: gh<_i14.SignInWithGoogleUsecase>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i18.HiveInjectableModule {}

class _$LoggerInjectableModule extends _i19.LoggerInjectableModule {}
