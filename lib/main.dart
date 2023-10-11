import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:monkey_talk/presentation/auth/blocs/auth/auth_cubit.dart';
import 'package:monkey_talk/presentation/auth/blocs/forgot_password/forgot_password_cubit.dart';
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_apple/sign_in_with_apple_cubit.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_cubit.dart';
import 'package:monkey_talk/presentation/auth/blocs/sign_in_with_google/sign_in_with_google_cubit.dart';
import 'app/app.dart';
import 'core/injectable_modules/injection_container.dart';
import 'firebase_options.dart';
import 'presentation/auth/blocs/login/login_cubit.dart';

late final FirebaseApp app;
late final GoogleSignIn googleSignIn;
late final FirebaseAuth auth;
late final FirebaseFirestore firestore;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  app = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  auth = FirebaseAuth.instanceFor(app: app);
  firestore = FirebaseFirestore.instanceFor(app: app);
  googleSignIn = GoogleSignIn.standard();
  await configureHives();

  configureDeps();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di<AuthCubit>()),
        BlocProvider(create: (context) => di<LoginCubit>()),
        BlocProvider(create: (context) => di<SignInWithGoogleCubit>()),
        BlocProvider(create: (context) => di<ForgotpasswordCubit>()),
        BlocProvider(create: (context) => di<RegisterCubit>()),
        BlocProvider(create: (context) => di<SignInWithAppleCubit>()),
      ],
      child: const MyApp(),
    );
  } 
}
