import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SvgPicture.asset('assets/images/agentRider.svg'),
                    ),
                    SizedBoxHeight60,
                    Text(
                      "Welcome!",
                      style: $styles.text.poppins20_500black,
                    ),
                    SizedBoxHeight10,
                    Text("Register using your email and password",
                        style: $styles.text.poppins14_400tertiary400),
                    SizedBoxHeight20,
                    const CustomTFF(
                      hint: "Enter your email id",
                    ),
                    SizedBoxHeight10,
                    InternationalPhoneNumberInput(
                      onInputChanged: (PhoneNumber number) {
                       
                      },
                      onInputValidated: (bool value) {
                      
                      },
                      selectorConfig: const SelectorConfig(
                        selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      ),
                      ignoreBlank: false,
                      autoValidateMode: AutovalidateMode.disabled,
                      selectorTextStyle: const TextStyle(color: Colors.black),
                      initialValue:
                          PhoneNumber(phoneNumber: "8526694122", isoCode: "IN"),
                      textFieldController: phoneController,
                      formatInput: true,
                      keyboardType: const TextInputType.numberWithOptions(
                          signed: true, decimal: true),
                      inputBorder: const OutlineInputBorder(),
                      onSaved: (PhoneNumber number) {
                       
                      },
                    ),
                    SizedBoxHeight10,
                    const CustomTFF(
                      hint: "Enter RECO registered number",
                    ),
                    SizedBoxHeight10,
                    const CustomTFF(
                      hint: "Create password",
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    SizedBoxHeight10,
                    const CustomTFF(
                      hint: "Confirm password",
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                    SizedBoxHeight10,
                    CustomButton(
                      text: "Next",
                      textStyle: $styles.text.poppins14_500white,
                    ),
                    SizedBox(
                      height: 40,
                      child: Row(
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
                  ]),
            )));
  }
}
