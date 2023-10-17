import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/core/routes/routes.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBoxHeight20,
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('My Account'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Activity Feed'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Transaction History'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Saved Jobs'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Past Jobs'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Dashboard'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Call Logs'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Reset Password'),
            ),
            const Divider(),
            // Container(
            //   color: $styles.colors.background,
            //   child: const Text('App Preferences'),
            // ),
            // const Divider(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Switch Theme'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Notifications',
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Travel Mode',
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(
                8.0,
              ),
              child: Text(
                'App Feedback',
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: const Text('Bug Reporting'),
                onTap: () {
                  context.push('${RouteStrings.profile}/settings/bugreporting');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Privacy Policy'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Terms & Conditions'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('App Tutorial'),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('FAQs'),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: const Text('Blocked Users'),
                onTap: () {
                  context.push('${RouteStrings.profile}/settings/blockusers');
                  // context.push('/profile/settings/blockedUser');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Report List'),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                child: const Text('Support'),
                onTap: () {
                  context.push('${RouteStrings.profile}/settings/support');
                },
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Data Collection',
              ),
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
