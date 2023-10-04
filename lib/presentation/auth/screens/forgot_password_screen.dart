import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

import '../blocs/forgot_password/forgot_password_cubit.dart';
import '../blocs/forgot_password/forgot_password_state.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
          onChanged: (value) {
            context.read<ForgotpasswordCubit>().emailchange(value);
          },
        ),
        SizedBoxHeight30,
        BlocListener<ForgotpasswordCubit, ForgotPasswordState>(
          listener: (context, state) {
            if (state.errorMessage.isNotEmpty) {
              _showSnackbarFailure(context);
            }
            if (state.isSucess) {
              successDialog(context);
              // router.go(RouteStrings.login);
            }
          },
          child: Container(),
        ),
        BlocBuilder<ForgotpasswordCubit, ForgotPasswordState>(
            builder: (context, state) {
          return CustomButton(
            isLoading: state.isLoading,
            onTap: () {
              context.read<ForgotpasswordCubit>().forgotpassword();
            },
            // successDialog(context),
            text: "Next",
            textStyle: $styles.text.poppins14_500white,
          );
        }),
      ]),
    ));
  }

  Future<void> successDialog(BuildContext context) {
    return showDialog(
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
    );
  }

  void _showSnackbarFailure(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Email wrong please try again with different email'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
