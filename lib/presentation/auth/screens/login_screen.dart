import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              style: $styles.text.lato20_500,
            ),
            SizedBoxHeight5,
            Text(
              'Login using your email and password',
              style: $styles.text.lato14_400,
            ),
            SizedBoxHeight20,
            
          ],
        ),
      ),
    );
  }
}
