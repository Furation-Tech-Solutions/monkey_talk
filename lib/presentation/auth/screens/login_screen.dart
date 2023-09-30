import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../core/styles.dart/stylekit.dart';
import '../../../core/utils.dart/hive_constants.dart';
import '../../../core/utils.dart/reusable_widgets/custom_Button.dart';
import '../../../core/utils.dart/reusable_widgets/custom_tff.dart';
import '../../../core/utils.dart/sized_boxes.dart';
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
        // router.go(RouteStrings.reservations);
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
            Center(
              child: SvgPicture.asset('assets/images/agentRider.svg'),
            ),
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
            const SizedBox(
                height: 50,
                child: CustomTFF(
                  hint: "Enter your email id",
                )),
            SizedBoxHeight10,
            const SizedBox(
                height: 50,
                child: CustomTFF(
                  hint: "Password",
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
                )),
            SizedBoxHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                    text: TextSpan(
                  text: "Forgot Password?",
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
                    textStyle: $styles.text.poppins14_500white,
                  ),
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
            // SizedBoxHeight40,
            // Row(
            //   children: [
            //     Expanded(
            //         child: Divider(
            //       color: $styles.colors.grey,
            //     )),
            //     SizedBoxWidth10,
            //     Text('Or', style: $styles.text.lato14_400grey5),
            //     SizedBoxWidth10,
            //     Expanded(
            //         child: Divider(
            //       color: $styles.colors.grey,
            //     )),
            //   ],
            // ),
            // SizedBoxHeight40,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CircleAvatar(
            //       radius: 24,
            //       backgroundColor: $styles.colors.tertiary900,
            //       child: SvgPicture.asset('assets/images/google.svg'),
            //     ),
            //     SizedBoxWidth10,
            //     CircleAvatar(
            //       radius: 24,
            //       backgroundColor: $styles.colors.tertiary900,
            //       child: SvgPicture.asset('assets/images/apple.svg'),
            //     ),
            //   ],
            // ),
            // Center(
            //   child: RichText(
            //     text: TextSpan(text: "Don't have an account? ", children: [
            //       TextSpan(
            //           text: "Sign up",
            //           recognizer: TapGestureRecognizer()
            //             ..onTap = () {
            //               // Navigate To Register Screen
            //             })
            //     ]),
            //   ),
            // ),
            // SizedBoxHeight15,
          ],
        ),
      ),
    );
  }
}
