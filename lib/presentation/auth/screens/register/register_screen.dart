import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_cubit.dart';
import 'package:monkey_talk/presentation/auth/widgets/appFooter.dart';

import '../../widgets/appHeader.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(14),
            child: SingleChildScrollView(
              child: BlocBuilder<RegisterCubit, RegisterState>(
                builder: (context, state) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppHeader(),
                        Text(
                          "Welcome!",
                          style: $styles.text.poppins20_500black,
                        ),
                        SizedBoxHeight10,
                        Text("Register using your email and password",
                            style: $styles.text.poppins14_400tertiary400),
                        SizedBoxHeight20,
                        CustomTFF(
                          hint: "Enter your email id",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              context.read<RegisterCubit>().updateEmail(value);
                            }
                          },
                        ),
                        SizedBoxHeight10,
                        InternationalPhoneNumberInput(
                          onInputChanged: (PhoneNumber number) {
                            print(number.phoneNumber);
                            if (number.phoneNumber != null
                                ? number.phoneNumber!.isNotEmpty
                                : false) {
                              context.read<RegisterCubit>().updatePhoneNumber(
                                  number.phoneNumber.toString());
                            }
                          },
                          onInputValidated: (bool value) {
                            print(value);
                          },
                          selectorConfig: SelectorConfig(
                            selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                          ),
                          ignoreBlank: false,
                          autoValidateMode: AutovalidateMode.disabled,
                          selectorTextStyle: TextStyle(color: Colors.black),
                          initialValue: PhoneNumber(
                              phoneNumber: "8526694122", isoCode: "IN"),
                          textFieldController: phoneController,
                          formatInput: true,
                          keyboardType: TextInputType.numberWithOptions(
                              signed: true, decimal: true),
                          inputBorder: OutlineInputBorder(),
                          onSaved: (PhoneNumber number) {
                            print('On Saved: $number');
                          },
                        ),
                        SizedBoxHeight10,
                        CustomTFF(
                            hint: "Enter RECO registered number",
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                context
                                    .read<RegisterCubit>()
                                    .updateRecoNumber(value);
                              }
                            }),
                        SizedBoxHeight10,
                        CustomTFF(
                            hint: "Create password",
                            suffixIcon: Icon(Icons.remove_red_eye),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                context.read<RegisterCubit>().updatePass(value);
                              }
                            }),
                        SizedBoxHeight10,
                        CustomTFF(
                            hint: "Confirm password",
                            suffixIcon: Icon(Icons.remove_red_eye),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                context
                                    .read<RegisterCubit>()
                                    .updateConfirmPass(value);
                              }
                            }),
                        SizedBoxHeight10,
                        CustomButton(
                          text: "Next",
                          textStyle: $styles.text.poppins14_500white,
                          onTap: () {
                            context.read<RegisterCubit>().registerUser();
                          },
                        ),
                        AppFooter(),
                        SizedBoxHeight15,
                        Center(
                          child: RichText(
                            text: TextSpan(
                                text: "Already have an Account? ",
                                children: [
                                  TextSpan(
                                      text: "Sign In",
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          // Navigate To Register Screen
                                          router.go(RouteStrings.login);
                                        })
                                ]),
                          ),
                        ),
                        SizedBoxHeight15,
                      ]);
                },
              ),
            )));
  }
}
