import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(14),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
              CustomTFF(hint: "Enter your email id",),
              SizedBoxHeight10,
              
            ])));
  }
}
