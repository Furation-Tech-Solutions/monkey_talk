import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_cubit.dart';
import 'package:monkey_talk/presentation/auth/widgets/appFooter.dart';

import '../../blocs/register/register_state.dart';
import '../../widgets/appHeader.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final phoneController = TextEditingController();
  String selectedGender = '';

  void handleRadioValueChange(String value) {
    setState(() {
      selectedGender = value;
      context.read<RegisterCubit>().genderChanged(value);
      switch (value) {
        case 'Male':
          print('Selected Male');
          break;
        case 'Female':
          print('Selected Female');
          break;
      }
    });
  }

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
                        const AppHeader(),
                        Text(
                          "Welcome!",
                          style: $styles.text.poppins20_500black,
                        ),
                        SizedBoxHeight10,
                        Text("Register using your email and password",
                            style: $styles.text.poppins14_400tertiary400),
                        SizedBoxHeight20,
                        CustomTFF(
                          hint: "Enter your First Name",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              context
                                  .read<RegisterCubit>()
                                  .firstNameChanged(value);
                            }
                          },
                        ),
                        SizedBoxHeight10,
                        CustomTFF(
                          hint: "Enter your Last Name",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              context
                                  .read<RegisterCubit>()
                                  .lastNameChanged(value);
                            }
                          },
                        ),
                        SizedBoxHeight10,
                        CustomTFF(
                          hint: "Enter your email id",
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              context.read<RegisterCubit>().emailChanged(value);
                            }
                          },
                        ),
                        SizedBoxHeight10,
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio(
                                  value: 'Male',
                                  groupValue: selectedGender,
                                  onChanged: (value) => handleRadioValueChange(
                                      value?.toString() ?? "Male"),
                                ),
                                Text('Male'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Radio(
                                  value: 'Female',
                                  groupValue: selectedGender,
                                  onChanged: (value) => handleRadioValueChange(
                                      value?.toString() ?? "Female"),
                                ),
                                Text('Female'),
                              ],
                            ),
                          ],
                        ),
                        SizedBoxHeight10,
                        IntlPhoneField(
                          decoration: const InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(), // here add state
                            ),
                          ),
                          disableLengthCheck: true,
                          keyboardType: TextInputType.number,
                          initialCountryCode: 'IN',
                          onChanged: (phone) {
                            debugPrint("phone : $phone");
                          },
                        ),
                        SizedBoxHeight10,
                        CustomTFF(
                            hint: "Create password",
                            suffixIcon: const Icon(Icons.remove_red_eye),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                context
                                    .read<RegisterCubit>()
                                    .passwordChanged(value);
                              }
                            }),
                        SizedBoxHeight10,
                        CustomTFF(
                          hint: "Confirm password",
                          suffixIcon: const Icon(Icons.remove_red_eye),
                          onChanged: (value) {},
                          validator: (value) {
                            if (value?.isNotEmpty ?? false) {
                              return value == state.password
                                  ? null
                                  : "Password and Confirm Password doesn't match";
                            }
                            return null;
                          },
                        ),
                        SizedBoxHeight10,
                        CustomButton(
                          text: "Next",
                          textStyle: $styles.text.poppins14_500white,
                          onTap: () {
                            // context.read<RegisterCubit>().registerUser();
                            router.go(RouteStrings.registerTwo);
                            // router.go('register/registerTwo');
                          },
                        ),
                        const AppFooter(),
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
