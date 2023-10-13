import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

import '../../../core/routes/routes.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBoxHeight20,
            GestureDetector(
              onTap: () {
                router.go(
                    '${RouteStrings.homePage}/notifications/connectionrequest');
              },
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  SizedBoxWidth10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Connection Requests',
                        style: $styles.text.poppins14_400tertiary900,
                      ),
                      Text(
                        'Accept or delete requests',
                        style: $styles.text.poppins12_400tertiary400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBoxHeight25,
            Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                ),
                SizedBoxWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Job Responses ',
                      style: $styles.text.poppins14_400tertiary900,
                    ),
                    Text(
                      'Accept or decline requests',
                      style: $styles.text.poppins12_400tertiary400,
                    ),
                  ],
                ),
              ],
            ),
            SizedBoxHeight25,
            Text(
              'Today',
              style: $styles.text.poppins16_500tertiary900,
            ),
            SizedBoxHeight25,
            ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBoxHeight15;
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return const Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBoxWidth10,
                      Expanded(
                        child: Text(
                          'Your application has been selected for the Job Role. Tap to view job agreement. ',
                        ),
                      ),
                      Text('9h'),
                    ],
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
