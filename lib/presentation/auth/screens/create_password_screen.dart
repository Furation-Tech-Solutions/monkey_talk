import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const AppHeader(),
              Text(
                "Create a strong password",
                style: $styles.text.poppins20_500tertiary900,
              ),
              SizedBoxHeight10,
              Text("Password should be at least 8 characters",
                  style: $styles.text.poppins14_400tertiary400),
              SizedBoxHeight20,
              CustomTFF(
                hint: "New password",
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintstyle: $styles.text.poppins14_400tertiary400,
              ),
              SizedBoxHeight10,
              CustomTFF(
                hint: "Confirm new password",
                suffixIcon: const Icon(Icons.remove_red_eye),
                hintstyle: $styles.text.poppins14_400tertiary400,
              ),
              SizedBoxHeight20,
              CustomButton(
                text: "Reset password",
                textStyle: $styles.text.poppins14_500white,
              )
            ])));
  }
}
