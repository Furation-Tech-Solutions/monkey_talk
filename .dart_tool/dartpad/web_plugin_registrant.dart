// Flutter web plugin registrant file.
//
// Generated file. Do not edit.
//

// @dart = 2.13
// ignore_for_file: type=lint

<<<<<<< HEAD
import 'package:firebase_auth_web/firebase_auth_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
=======
import 'package:libphonenumber_web/libphonenumber_web.dart';
>>>>>>> origin/dev
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void registerPlugins([final Registrar? pluginRegistrar]) {
  final Registrar registrar = pluginRegistrar ?? webPluginRegistrar;
<<<<<<< HEAD
  FirebaseAuthWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
=======
  LibPhoneNumberPlugin.registerWith(registrar);
>>>>>>> origin/dev
  registrar.registerMessageHandler();
}
