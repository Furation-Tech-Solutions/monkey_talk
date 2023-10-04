// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@module
// @InjectableInit.microPackage()
// initMicroPackage() {}

/// Firebase Injectable Module to inject Firebase libraries via DI
/// (Dependency injection)
abstract class FirebaseInjectableModule
// extends MicroPackageModule
{
  /// Firebase Auth
  @Singleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  // /// Firebase Messaging
  // @LazySingleton()
  // FirebaseMessaging get firebaseMessaging => FirebaseMessaging.instance;

  // /// Firebase Crashlytics
  // @LazySingleton()
  // FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;

  // /// Firebase Performance
  // @LazySingleton()
  // FirebasePerformance get firebasePerformance => FirebasePerformance.instance;

  // /// Firebase Analytics
  // @LazySingleton()
  // FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;

  // /// Firebase Dynamic Links
  // @LazySingleton()
  // FirebaseDynamicLinks get firebaseDynamicLinks =>
  //     FirebaseDynamicLinks.instance;
}
