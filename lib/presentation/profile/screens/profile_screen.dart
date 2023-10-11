import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: $styles.colors.background,
          title: const Text('Profile'),
          actions: [
            IconButton(
              icon: const Icon(Icons.menu),
              color: $styles.colors.tertiary600,
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBoxHeight15,
                            GestureDetector(
                              onTap: () {
                                context.push('/profile/settings');
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.settings),
                                  Text("Settings"),
                                ],
                              ),
                            ),
                            SizedBoxHeight20,
                            const Row(
                              children: [
                                Icon(Icons.arrow_downward_outlined),
                                Text("Transaction History"),
                              ],
                            ),
                            SizedBoxHeight20,
                            const Row(
                              children: [
                                Icon(Icons.history_toggle_off_outlined),
                                Text("Visit History"),
                              ],
                            ),
                          ],
                        ),
                      );
                    });
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
          child: SingleChildScrollView(
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
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Edit Profile',
                        isPrimary: false,
                        onTap: () {
                          context.push('/profile/edit');
                        },
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.more_vert,
                      ),
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBoxHeight15,
                                    Row(
                                      children: [
                                        Icon(Icons.share),
                                        Text("Share profile "),
                                      ],
                                    ),
                                    SizedBoxHeight20,
                                    Row(
                                      children: [
                                        Icon(Icons.share),
                                        Text("Share profile via"),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            });
                      },
                    )
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
                SizedBoxHeight20,
                const Text('My Badges (5)'),
                SizedBoxHeight10,
                const MyBadgesSection(),
                Divider(
                  thickness: 10,
                  color: $styles.colors.background,
                ),
                SizedBoxHeight10,
                const Text('Licenses (1)'),
                SizedBoxHeight20,
                Row(
                  children: [
                    Container(
                      color: $styles.colors.recoBadge,
                      height: 57,
                      width: 61,
                      child: const Center(
                        child: Text(
                          'RECO',
                        ),
                      ),
                    ),
                    SizedBoxWidth12,
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('RECO'),
                        SizedBoxHeight8,
                        Text('Issued July 2018'),
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 10,
                  color: $styles.colors.background,
                ),
                SizedBoxHeight10,
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Reviews (12)'),
                    Text('View All'),
                  ],
                ),
                SizedBoxHeight15,
                const Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBoxWidth8,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Emily Gomez'),
                            SizedBoxHeight8,
                            Text('Canada/Onatrio')
                          ],
                        ),
                        Spacer(),
                        ReviewSection()
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyBadgesSection extends StatelessWidget {
  const MyBadgesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBoxHeight15;
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return const Row(
          children: [
            CircleAvatar(radius: 30),
            SizedBoxWidth12,
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('20+ Successful projects'),
                SizedBoxHeight8,
                Text('Issued on 24 Sep 2023'),
              ],
            ),
          ],
        );
      },
      itemCount: 5,
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
        Text('26 days ago'),
      ],
    );
  }
}
