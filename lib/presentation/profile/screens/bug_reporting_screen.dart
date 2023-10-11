import 'package:flutter/material.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class BugReportingScreen extends StatelessWidget {
  const BugReportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bug Reporting'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxHeight40,
            const Text('Report a problem'),
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
            const CustomButton(text: 'Submit'),
          ],
        ),
      ),
    );
  }
}
