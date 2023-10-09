import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/presentation/auth/screens/create_password_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/forgot_password_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/register/register_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/register/registertwo.dart';
import 'package:monkey_talk/presentation/home/firstHomePage.dart';
import 'package:monkey_talk/presentation/profile/screens/profile_screen.dart';
import 'package:monkey_talk/presentation/search/screens/search_screen.dart';

import '../../presentation/auth/screens/login_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

//ONLY USE FOR PARENT ROUTES AND NAVIGATION (NOT FOR DEFINING SUB-ROUTES)
class RouteStrings {
  //login screen
  static const login = '/login';

  //forget password
  static const forgotPassword = '/forgotPassword';

  //create password
  static const createPassword = '/createPassword';

  //register
  static const register = '/register';
  static const registerTwo = '/register/registerTwo';
  static const registerThree = '/register/registerTwo/registerThree';

  // Homepage
  static const homePage = '/homepage';

  //profile
  static const profile = '/profile';

  //search
  static const search = '/search';
}

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouteStrings.login,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: RouteStrings.login,
      builder: (BuildContext context, GoRouterState state) =>
          const LoginScreen(),
    ),
    GoRoute(
      path: RouteStrings.forgotPassword,
      builder: (BuildContext context, GoRouterState state) =>
          const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: RouteStrings.createPassword,
      builder: (BuildContext context, GoRouterState state) =>
          const CreatePasswordScreen(),
    ),
    GoRoute(
        path: RouteStrings.register,
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterScreen(),
        routes: [
          GoRoute(
            path: 'registerTwo',
            builder: (BuildContext context, GoRouterState state) {
              return const RegisterTwo();
            },
            // routes: [
            //   GoRoute(
            //     path: 'registerThree',
            //     builder: (BuildContext context, GoRouterState state) =>
            //         const RegisterThree(),
            //   ),
            // ],
          ),
        ]),

    GoRoute(
      path: RouteStrings.homePage,
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: RouteStrings.profile,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: RouteStrings.search,
      builder: (context, state) => const SearchScreen(),
    )
    // GoRoute(
    //     path: RouteStrings.guestList,
    //     builder: (BuildContext context, GoRouterState state) =>
    //         const GuestsListScreen(),
    //     routes: [
    //       GoRoute(
    //         path: 'addguest',
    //         builder: (BuildContext context, GoRouterState state) {
    //           return const AddGuestScreen();

    //           // final reservationId = state.pathParameters['reservationsId'];
    //         },
    //       ),
    //     ]),
    // GoRoute(
    //     path: RouteStrings.requests,
    //     builder: (BuildContext context, GoRouterState state) =>
    //         const RequestsScreen(),
    //     routes: [
    //       GoRoute(
    //         path: 'request/:requestId',
    //         builder: (BuildContext context, GoRouterState state) {
    //           final requestID = state.pathParameters['requestId'];
    //           RequestEntity requestEntity = state.extra as RequestEntity;
    //           return ResponseNeededScreen(
    //             request: requestEntity,
    //           );
    //         },
    //       ),
    //     ]),
    // GoRoute(
    //   path: RouteStrings.reservations,
    //   builder: (BuildContext context, GoRouterState state) =>
    //       const ReservationsScreen(),
    //   routes: [
    //     GoRoute(
    //       path: 'reservation/:reservationId',
    //       builder: (BuildContext context, GoRouterState state) {
    //         final reservationId = state.pathParameters['reservationId'];
    //         return RservationScreen(
    //           reservationId: reservationId,
    //         );
    //       },
    //     ),
    //     // GoRoute(
    //     //   path: 'reservation',
    //     //   builder: (BuildContext context, GoRouterState state) {
    //     //     return const RservationScreen();

    //     //     // final reservationId = state.pathParameters['reservationsId'];
    //     //   },
    //     // ),
    //     GoRoute(
    //       path: 'add',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const AddReservations(),
    //     ),
    //   ],
    // ),
    // GoRoute(
    //     path: RouteStrings.grid,
    //     builder: (BuildContext context, GoRouterState state) =>
    //         const GridScreen(),
    //     routes: [
    //       GoRoute(
    //         path: 'reservation/:reservationId',
    //         builder: (BuildContext context, GoRouterState state) {
    //           final reservationId = state.pathParameters['reservationId'];
    //           return RservationScreen(
    //             reservationId: reservationId,
    //           );
    //         },
    //       ),
    //     ]),
    // GoRoute(
    //   path: RouteStrings.floorplan,
    //   builder: (BuildContext context, GoRouterState state) => const FloorPlan(),
    // ),
    // GoRoute(
    //   path: RouteStrings.flows,
    //   builder: (BuildContext context, GoRouterState state) =>
    //       const FlowsScreen(),
    // ),
    // GoRoute(
    //     path: RouteStrings.clients,
    //     builder: (BuildContext context, GoRouterState state) =>
    //         const ClientsScreen(),
    //     routes: [
    //       GoRoute(
    //         path: 'client/:clientId',
    //         // path: ':clientId',
    //         builder: (BuildContext context, GoRouterState state) {
    //           final clientId = state.pathParameters['clientId'];
    //           final client = state.extra as ClientEntity;
    //           return ClientProfileScreen(
    //             clientId: clientId,
    //             client: client,
    //           );
    //         },
    //         routes: [
    //           GoRoute(
    //             path: 'edit',
    //             builder: (BuildContext context, GoRouterState state) {
    //               ClientEntity client = state.extra as ClientEntity;
    //               return ClientsEditProfile(
    //                 isNewClient: false,
    //                 client: client,
    //                 appBarTitle: 'Edit Profile',
    //               );
    //             },
    //           ),
    //         ],
    //       ),
    //       GoRoute(
    //         path: 'add',
    //         builder: (BuildContext context, GoRouterState state) {
    //           return const ClientsEditProfile(
    //             isNewClient: true,
    //             appBarTitle: 'Add Profile',
    //           );
    //         },
    //       ),
    //     ]),
    // GoRoute(
    //   path: '/settings',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const Settings();
    //   },
    //   routes: [
    //     GoRoute(
    //       path: 'notification',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const NotificationScreen(),
    //     ),
    //     GoRoute(
    //       path: 'chitprintingpos',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const ChitPrintingPos(),
    //     ),
    //     GoRoute(
    //       path: 'bluktableaction',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const BluckTableAction(),
    //     ),
    //     GoRoute(
    //       path: 'settingreservation',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const SettingReservation(),
    //     ),
    //     GoRoute(
    //       path: 'reservationseating',
    //       builder: (BuildContext context, GoRouterState state) =>
    //           const RservationSeating(),
    //     ),
    //   ],
    // ),
    // GoRoute(
    //   path: RouteStrings.waitlist,
    //   builder: (context, state) => const Placeholder(),
    //   routes: const [],
    // )
  ],
);
