import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 55.5,
                child: Text('Pic'),
              ),
              SizedBoxHeight20,
              Text(
                'Jordan Taylor',
                style: $styles.text.poppins16_500tertiary900,
              ),
              SizedBoxHeight5,
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: $styles.colors.tertiary400,
                  ),
                  Text(
                    'Canada/Ontario',
                    style: $styles.text.poppins12_400tertiary400,
                  ),
                ],
              ),
              SizedBoxHeight10,
              const Text('Emily Gomez and John Smith are mutual connections'),
              SizedBoxHeight15,
              const Text('300 connections'),
              SizedBoxHeight10,
              const Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      text: 'Edit Profile',
                      isPrimary: false,
                    ),
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBoxHeight40,
              const Text('About'),
              SizedBoxHeight8,
              const Text(
                'I’m your trusted local real estate expert. With 10 years of experience in the Canadian market, I’m dedicated to helping you find your dream home or sell your property seamlessly.Let’s work together to make your real estate goals a reality. Contact me today, and let’s get started!',
                softWrap: true,
              ),
              SizedBoxHeight12,
              const Row(
                children: [
                  // Icon(Icons),
                  Text('www.linkedin.com/in/Jordan'),
                ],
              ),
              SizedBoxHeight8,
              const Row(
                children: [
                  Icon(Icons.mail),
                  SizedBoxWidth10,
                  Text('jordantaylor@gmail.com'),
                ],
              ),
              SizedBoxHeight20,
              Divider(
                thickness: 10,
                color: $styles.colors.background,
              ),
              const Text('My Badges (5)'),
              SizedBoxHeight10,
              const Row(
                children: [
                  CircleAvatar(radius: 30),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('20+ Successful projects'),
                      Text('Issued on 24 Sep 2023'),
                    ],
                  ),
                ],
              ),
              // const ListTile(
              //   leading: CircleAvatar(radius: 30),
              //   title: Text('20+ Successful projects'),
              //   subtitle: Text('Issued on 24 Sep 2023'),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
