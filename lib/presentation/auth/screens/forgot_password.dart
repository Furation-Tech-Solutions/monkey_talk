import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: SvgPicture.asset('assets/images/agentRider.svg'),
        ),
        SizedBoxHeight60,
        Text("Reset Password", style: $styles.text.poppins20_500black),
        SizedBoxHeight10,
        Text("Enter your email linked to your account",
            style: $styles.text.poppins14_400tertiary400),
        SizedBoxHeight30,
        CustomTFF(
          hint: "Enter your email id",
        ),
        SizedBoxHeight30,
        CustomButton(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      "OK",
                      textAlign: TextAlign.center,
                      style: $styles.text.poppins16_700primary200,
                    ))
              ],
              content: Text(
                "We have sent a reset link to emasmith@gmail.com to reset your password",
                textAlign: TextAlign.center,
                style: $styles.text.poppins12_400tertiary400,
              ),
              title: Text(
                "Email Sent",
                textAlign: TextAlign.center,
                style: $styles.text.poppins14_500black,
              ),
            ),
          ),
          text: "Next",
          textStyle: $styles.text.poppins14_500White,
        ),
      ]),
    ));
  }
}
