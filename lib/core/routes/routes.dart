import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/presentation/auth/screens/create_password_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/forgot_password_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/register/register_screen.dart';
import 'package:monkey_talk/presentation/auth/screens/register/registertwo.dart';
import 'package:monkey_talk/presentation/home/screens/connection_requests_screen.dart';
import 'package:monkey_talk/presentation/home/screens/home_screen.dart';
import 'package:monkey_talk/presentation/home/screens/notifications_screen.dart';
import 'package:monkey_talk/presentation/home/screens/upcoming_tasks_screen.dart';
import 'package:monkey_talk/presentation/home/widgets/add_post_screen.dart';
import 'package:monkey_talk/presentation/home/widgets/feedback_screen.dart';
import 'package:monkey_talk/presentation/home/widgets/post_jobs_screen.dart';
import 'package:monkey_talk/presentation/home/widgets/post_request_details_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/block_users_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/bug_reporting_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/edit_profile_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/profile_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/settings_screen.dart';
import 'package:monkey_talk/presentation/profile/screens/support_screen.dart';
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

  // Homepage
  static const homePage = '/homepage';

  //profile
  static const profile = '/profile';

  //search
  static const search = '/search';

//////
  //feedback
  static const feedback = '/feedback';
  static const addPostScreen = '/addPosts';
  static const postJobs = '/postJobs';
}

final router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: RouteStrings.addPostScreen,
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
          ),
        ]),
    GoRoute(
        path: RouteStrings.homePage,
        builder: (BuildContext context, GoRouterState state) =>
            const HomeScreen(),
        routes: [
          GoRoute(
            path: 'postrequestdetails',
            builder: (context, state) => const PostRequestDetailsScreen(),
          ),
          GoRoute(
            path: 'notifications',
            builder: (context, state) => const NotificationsScreen(),
            routes: [
              GoRoute(
                path: 'connectionrequest',
                builder: (context, state) => const ConnectionRequestsScreen(),
              ),
            ],
          ),
          GoRoute(
            path: 'upcomingtasks',
            builder: (context, state) => const UpComingTasksScreen(),
          ),
        ]),
    GoRoute(
      path: RouteStrings.profile,
      builder: (context, state) => const ProfileScreen(),
      routes: [
        GoRoute(
          path: 'edit',
          builder: (context, state) => const EditProfileScreen(),
        ),
        GoRoute(
          path: 'settings',
          builder: (context, state) => const SettingsScreen(),
          routes: [
            GoRoute(
              path: 'blockusers',
              builder: (context, state) => const BlockedUserScreen(),
            ),
            GoRoute(
              path: 'bugreporting',
              builder: (context, state) => const BugReportingScreen(),
            ),
            GoRoute(
              path: 'support',
              builder: (context, state) => const SupportScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: RouteStrings.search,
      builder: (context, state) => const SearchScreen(),
    ),

    ////////
    GoRoute(
      path: RouteStrings.postJobs,
      builder: (context, state) => const PostJobsScreen(),
    ),
    GoRoute(
      path: RouteStrings.addPostScreen,
      builder: (context, state) => const AddPostScreen(),
    ),
    GoRoute(
      path: RouteStrings.feedback,
      builder: (context, state) => const FeedbackScreen(),
    ),
    GoRoute(
      path: RouteStrings.feedback,
      builder: (context, state) => const FeedbackScreen(),
    ),
  ],
);
