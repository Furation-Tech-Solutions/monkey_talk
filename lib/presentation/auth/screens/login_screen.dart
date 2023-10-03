import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';

import '../widgets/appFooter.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
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
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      router.go(RouteStrings.forgotPassword);
                    },
                  style: $styles.text.lato14_400tertiary600,
                ))
              ],
            ),
            SizedBoxHeight10,
            CustomButton(
              text: "Login",
              textStyle: $styles.text.poppins14_500white,
            ),
            SizedBoxHeight40,
            AppFooter(),
            Expanded(child: SizedBox()),
            Center(
              child: RichText(
                text: TextSpan(text: "Don't have an account? ", children: [
                  TextSpan(
                      text: "Sign up",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // Navigate To Register Screen
                          router.go(RouteStrings.register);
                        })
                ]),
              ),
            ),
            SizedBoxHeight15,
          ],
        ),
      ),
    );
  }
}
