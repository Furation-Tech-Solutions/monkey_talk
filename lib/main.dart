import 'package:flutter/material.dart';

import 'app/app.dart';
// import 'package:gmsfluttermobile/presentation/guests/blocs/guestlist/guestslist_cubit.dart';

// import 'package:gmsfluttermobile/presentation/reservations/blocs/reservation/reservation_cubit.dart';

// import 'package:gmsfluttermobile/presentation/guests/blocs/guestlist/guestslist_cubit.dart';
// import 'package:gmsfluttermobile/presentation/reservations/blocs/reservation/reservation_cubit.dart';

// import 'presentation/guests/blocs/guestlist/guestslist_cubit.dart';
// import 'presentation/requests/blocs/requests/requests_cubit.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  // await configureHives();

  // configureDeps();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}
