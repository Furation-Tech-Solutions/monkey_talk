import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/presentation/auth/screens/create_password.dart';
import 'package:monkey_talk/presentation/auth/screens/forgot_password.dart';
import 'package:monkey_talk/presentation/auth/screens/register/register_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/register/registerthree.dart';
import 'package:monkey_talk/presentation/auth/screens/register/registertwo.dart';
import 'package:monkey_talk/presentation/home/firstHomePage.dart';

import '../../presentation/auth/screens/login_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

//ONLY USE FOR PARENT ROUTES AND NAVIGATION (NOT FOR DEFINING SUB-ROUTES)
class RouteStrings {
  /// AUTH
  /// Login screen
  static const login = '/login';
  static const forgotPassword = '/forgot_Password';
  static const createPassword = '/create_Password';
  static const register = '/register';
  static const registerTwo = '/registerTwo';
  static const registerThree = '/registerThree';

  // Homepage
  static const homePage = '/homepage';

  // static const reservation = '/reservation';

  // static const forget = '/forgetPassword';

  // /// Reservations screen
  // static const reservations = '/reservations';

  // /// Reservations filter by screen
  // static const reservationsFilterBy = '/reservations/filter';

  // /// Reservation screen which has client info, reservation info, etc
  // static String reservationsReservationScreen(
  //         {required String reservationId}) =>
  //     '/reservations/reservation/$reservationId';

  // /// Reservations screen
  // static const reservationAdd = '/reservations/add';

  // /// Floorplan screen
  // static const floorplan = '/floorplan';

  // /// Guestlist screen
  // static const guestList = '/guestlist';
  // static const addguest = '/guestlist/addguest';

  // /// Requests screen
  // static const requests = '/requests';
  // static String requestResponse({required String requestId}) =>
  //     '/requests/request/$requestId';

  ///  Clients screen
  // static const clients = '/clients';

  // static const clientAdd = '/clients/add';

  // static String clientInfo({required String clientId}) =>
  //     '/clients/client/$clientId';
  // // static String clientInfo({required String clientId}) => '/clients/$clientId';

  // static String clientEdit({required String clientId}) =>
  //     '/clients/client/$clientId/edit';

  // ///  Grid screen
  // static const grid = '/grid';

  // /// Reservation screen which has client info, reservation info, etc after grid
  // static String gridReservationScreen({required String reservationId}) =>
  //     '/grid/reservation/$reservationId';

  // ///  Waitlist screen
  // static const waitlist = '/waitlist';

  // ///  Flows screen
  // static const flows = '/flows';

  // ///  Settings screen
  // static const settings = '/settings';

  // // static const clientsEditProfile = '/editprofile';
  // static const notification = '/settings/notification';

  // static const cheatprintingpos = '/settings/chitprintingpos';

  // static const settingreservation = '/settings/settingreservation';

  // static const bluktableaction = '/settings/bluktableaction';

  // static const reservationsetting = '/settings/reservationseating';

  // static const clientsEditProfile = '/editprofile';
  // // static const clientsEditProfile = '/editprofile';
}

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouteStrings.login,
  debugLogDiagnostics: true,
  routes: [
    // GoRoute(
    //   path: RouteStrings.forget,
    //   builder: (BuildContext context, GoRouterState state) =>
    //       const ForgotPassword(),
    // ),
    GoRoute(
      path: RouteStrings.login,
      builder: (BuildContext context, GoRouterState state) => LoginScreen(),
    ),
    GoRoute(
      path: RouteStrings.forgotPassword,
      builder: (BuildContext context, GoRouterState state) =>
          const ForgotPasswordPage(),
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
    ),
    GoRoute(
      path: RouteStrings.registerTwo,
      builder: (BuildContext context, GoRouterState state) =>
          const RegisterTwo(),
    ),
    GoRoute(
      path: RouteStrings.registerThree,
      builder: (BuildContext context, GoRouterState state) =>
          const RegisterThree(),
    ),
    GoRoute(
      path: RouteStrings.homePage,
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
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
