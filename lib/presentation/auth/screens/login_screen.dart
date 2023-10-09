import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';
import '../widgets/appFooter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/utils.dart/hive_constants.dart';
import '../../../core/utils.dart/reusable_widgets/custom_button.dart';
import '../blocs/auth/auth_cubit.dart';
import '../blocs/auth/auth_state.dart';
import '../blocs/login/login_cubit.dart';
import '../blocs/login/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Box<dynamic>? userBox;

  @override
  void initState() {
    openUserProfileBox();
    super.initState();
  }

  Future<void> openUserProfileBox() async {
    setState(() {
      userBox = Hive.box(HiveConstants.userBox);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (userBox == null) {
      return const CupertinoActivityIndicator(); // or a loading indicator
    }
    final uid = userBox!.get(HiveConstants.userUidKey);
    debugPrint('BOX UID IN UI : $uid');
    if (uid != null) {
      Future.delayed(Duration.zero, () {
        // Future.delayed is not necessary but prevents console errors
        router.go(RouteStrings.homePage);
      });
      return Container();
    } else {
      return const LoginPage();
    }
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state.isAuthenticated) {
                  router.go(RouteStrings.register);
                }
              },
              child: const SizedBox.shrink(),
            ),
            const AppHeader(),
            Text(
              'Welcome!',
              style: $styles.text.poppins20_500tertiary900,
            ),
            SizedBoxHeight5,
            Text(
              'Login using your email and password',
              style: $styles.text.poppins14_400tertiary400,
            ),
            SizedBoxHeight20,
            SizedBox(
                height: 50,
                child: CustomTFF(
                  hint: "Enter your email id",
                  onChanged: (value) {
                    context.read<LoginCubit>().emailChanged(value);
                  },
                )),
            SizedBoxHeight10,
            SizedBox(
              height: 50,
              child: CustomTFF(
                hint: "Password",
                suffixIcon: const Icon(Icons.remove_red_eye_rounded),
                onChanged: (value) {
                  context.read<LoginCubit>().passwordChanged(value);
                },
              ),
            ),
            SizedBoxHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Forgot Password?",
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      router.go(RouteStrings.forgotPassword);
                    },
                  style: $styles.text.lato14_400tertiary600,
                ))
              ],
            ),
            SizedBoxHeight10,
            BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
              return Column(
                children: [
                  CustomButton(
                      text: "Login",
                      isLoading: state.isLoading,
                      textStyle: $styles.text.poppins14_500white,
                      onTap: () {
                        context.read<LoginCubit>().login();
                      }),
                  SizedBoxHeight10,
                  state.errorMessage.isNotEmpty
                      ? Text(
                          state.errorMessage,
                          style: const TextStyle(color: Colors.black),
                        )
                      : Container(),
                  SizedBoxHeight10,
                ],
              );
            }),
            SizedBoxHeight40,
            const AppFooter(),
            const Expanded(
              child: SizedBox(),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account? ",
                  children: [
                    TextSpan(
                        text: "Sign up",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Navigate To Register Screen
                            router.go(RouteStrings.register);
                          })
                  ],
                ),
              ),
            ),
            SizedBoxHeight15,
          ],
        ),
      ),
    );
  }
}
