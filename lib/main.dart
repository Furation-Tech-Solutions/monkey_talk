import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:monkey_talk/presentation/auth/blocs/auth/auth_cubit.dart';
import 'app/app.dart';
import 'core/injectable_modules/injection_container.dart';
import 'firebase_options.dart';
import 'presentation/auth/blocs/login/login_cubit.dart';

// late final FirebaseApp app;
// late final GoogleSignIn googleSignIn;
// late final FirebaseAuth auth;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // app = await Firebase.initializeApp();
  // auth = FirebaseAuth.instanceFor(app: app);
  // googleSignIn = GoogleSignIn.standard();
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
      ],
      child: const MyApp(),
    );
  }
}
