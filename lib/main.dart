import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/app.dart';
import 'core/injectable_modules/injection_container.dart';
import 'firebase_options.dart';
import 'presentation/auth/blocs/login/login_cubit.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  // await configureHives();

  // configureDeps();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
         BlocProvider(create: (context) => di<LoginCubit>()),
      ],
       child: const MyApp(),
    );
  }
}
