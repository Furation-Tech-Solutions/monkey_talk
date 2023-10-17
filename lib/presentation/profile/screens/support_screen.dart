import 'package:flutter/material.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxHeight40,
            const Text('To'),
            SizedBoxHeight8,
            const CustomTFF(
              hint: 'supportmailid@test.com',
            ),
            SizedBoxHeight20,
            const Text('Body'),
            SizedBoxHeight8,
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              height: 185,
              width: 386,
              child: const Text('What went wrong?'),
            ),
            SizedBoxHeight10,
            Container(
              padding: const EdgeInsets.all(10),
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.camera_alt_outlined),
                  SizedBoxWidth5,
                  Text('Tap here to share a screenshot or add attachmemt'),
                ],
              ),
            ),
            SizedBoxHeight15,
            const CustomButton(text: 'Request for a Call back')
          ],
        ),
      ),
    );
  }
}
