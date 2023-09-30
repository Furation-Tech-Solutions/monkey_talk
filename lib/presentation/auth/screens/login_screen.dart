import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

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
            Row(
              children: [
                Expanded(
                    child: Divider(
                  color: $styles.colors.grey,
                )),
                SizedBoxWidth10,
                Text('Or', style: $styles.text.lato14_400grey5),
                SizedBoxWidth10,
                Expanded(
                    child: Divider(
                  color: $styles.colors.grey,
                )),
              ],
            ),
            SizedBoxHeight40,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: $styles.colors.tertiary900,
                  child: SvgPicture.asset('assets/images/google.svg'),
                ),
                SizedBoxWidth10,
                CircleAvatar(
                  radius: 24,
                  backgroundColor: $styles.colors.tertiary900,
                  child: SvgPicture.asset('assets/images/apple.svg'),
                ),
              ],
            ),
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
