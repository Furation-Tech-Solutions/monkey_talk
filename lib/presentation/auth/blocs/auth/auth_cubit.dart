import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/logger/applogger.dart';
import '../../../../core/utils.dart/hive_constants.dart';
import 'auth_state.dart';

//@injectible for cubits but need singleton in this case
@singleton
class AuthCubit extends Cubit<AuthState> {
  final FirebaseAuth _firebaseAuth;
  final HiveInterface _hive;
  final AppLogger _appLogger;

  AuthCubit(
    this._firebaseAuth,
    this._hive,
    this._appLogger,
  ) : super(AuthState(_firebaseAuth.currentUser)) {
    _firebaseAuth.authStateChanges().listen((user) {
      emit(AuthState(user));

      if (user != null) {
        _hive
            .box<dynamic>(HiveConstants.userBox)
            .put(HiveConstants.userUidKey, user.uid);
        _appLogger.i("AuthCubit AuthState Changed to user: ${user.email}");
      } else {
        // _hive
        //     .box<dynamic>(HiveConstants.userBox)
        //     .delete(HiveConstants.userUidKey);
        _appLogger.i("AuthCubit AuthState Changed to NULL user");
      }
      final uidbix =
          _hive.box(HiveConstants.userBox).get(HiveConstants.userUidKey);
      debugPrint(uidbix);
    });
  }
}
