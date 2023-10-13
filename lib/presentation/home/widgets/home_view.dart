import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

import '../../../core/routes/routes.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.location_on),
                          SizedBoxWidth10,
                          Column(
                            children: [
                              Text(
                                "Canada/Ontario",
                                style: $styles.text.poppins16_500tertiary900,
                              ),
                              SizedBoxHeight2,
                              Text(
                                "200 Albert St, S4R 2N4",
                                style: $styles.text.poppins12_400tertiary400,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBoxWidth15,
                      GestureDetector(
                        onTap: () {
                          context.go('${RouteStrings.homePage}/notifications');
                        },
                        child: CircleAvatar(
                          radius: 21,
                          backgroundColor: $styles.colors.primary200,
                          child: const Icon(Icons.notifications_active),
                        ),
                      ),
                    ],
                  ),
                  SizedBoxHeight10,
                  Row(
                    children: [
                      const Expanded(
                        child: CustomTFF(
                          hint: 'Search',
                          suffixIcon: Icon(
                            Icons.search,
                          ),
                        ),
                      ),
                      SizedBoxWidth10,
                      Container(
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: $styles.colors.tertiary200),
                            color: $styles.colors.white,
                            borderRadius: BorderRadius.circular(4)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            'assets/icons/filter.svg',
                            height: 19,
                            width: 24,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBoxHeight15,
            Expanded(
                child: Container(
              color: $styles.colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Tasks (3)",
                            style: $styles.text.poppins16_500tertiary900,
                          ),
                          GestureDetector(
                            onTap: () {
                              router
                                  .go('${RouteStrings.homePage}/upcomingtasks');
                            },
                            child: Text(
                              "View All",
                              style: $styles.text.poppins12_500primary200,
                            ),
                          )
                        ],
                      ),
                      SizedBoxHeight10,
                      SizedBox(
                        height: 110,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return SizedBoxWidth10;
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        content: SizedBox(
                                          width: double.infinity,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      "assets/icons/clock.svg",
                                                    ),
                                                    SizedBoxWidth8,
                                                    const Text(
                                                        '11:00 AM - 12:00 PM')
                                                  ],
                                                ),
                                                SizedBoxHeight8,
                                                const Text(
                                                    'Presentation of the house in the Forest valley.'),
                                                SizedBoxHeight30,
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: $styles
                                                        .colors.background,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      SizedBoxHeight10,
                                                      Row(
                                                        children: [
                                                          const CircleAvatar(
                                                            radius: 30,
                                                          ),
                                                          SizedBoxWidth8,
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Jordan Taylor',
                                                                style: $styles
                                                                    .text
                                                                    .poppins16_500tertiary900,
                                                              ),
                                                              Text(
                                                                'Male - Canada/Ontario',
                                                                style: $styles
                                                                    .text
                                                                    .poppins12_400tertiary400,
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      SizedBoxHeight15,
                                                      const Text(
                                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.',
                                                        softWrap: true,
                                                        // maxLines: 2,
                                                      ),
                                                      SizedBoxHeight20,
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/icons/clock.svg',
                                                            color: $styles
                                                                .colors
                                                                .tertiary600,
                                                          ),
                                                          SizedBoxWidth10,
                                                          Expanded(
                                                            child: Text(
                                                              "20th September 2023 at 11:00 AM",
                                                              style: $styles
                                                                  .text
                                                                  .poppins12_400tertiary900,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBoxHeight15,
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/icons/location.svg',
                                                            color: $styles
                                                                .colors
                                                                .tertiary600,
                                                          ),
                                                          SizedBoxWidth10,
                                                          Text(
                                                            "200 Albert St, S4R 2N4",
                                                            style: $styles.text
                                                                .poppins12_400tertiary900,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBoxHeight15,
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/icons/call.svg',
                                                            color: $styles
                                                                .colors
                                                                .tertiary600,
                                                          ),
                                                          SizedBoxWidth10,
                                                          Text(
                                                            "+1 222 222 22222",
                                                            style: $styles.text
                                                                .poppins12_400tertiary900,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBoxHeight15,
                                                      Row(
                                                        children: [
                                                          SvgPicture.asset(
                                                            'assets/icons/mail.svg',
                                                            color: $styles
                                                                .colors
                                                                .tertiary600,
                                                          ),
                                                          SizedBoxWidth10,
                                                          Text(
                                                            "jobowner@owner.com",
                                                            style: $styles.text
                                                                .poppins12_400tertiary900,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBoxHeight15,
                                                    ],
                                                  ),
                                                ),
                                                SizedBoxHeight15,
                                                const SizedBox(
                                                  height: 40,
                                                  child: CustomButton(
                                                      text: 'Call Client'),
                                                ),
                                                SizedBoxHeight12,
                                                const SizedBox(
                                                  height: 40,
                                                  child: CustomButton(
                                                      text: 'Call Job Owner'),
                                                ),
                                                SizedBoxHeight12,
                                                const SizedBox(
                                                  height: 40,
                                                  child: CustomButton(
                                                      text:
                                                          'Message Job Owner'),
                                                ),
                                                SizedBoxHeight12,
                                                // const SizedBox(
                                                //   height: 40,
                                                //   child: CustomButton(
                                                //     text: 'Decline',
                                                //     isPrimary: false,
                                                //   ),
                                                // ),
                                                const SizedBox(
                                                  height: 40,
                                                  child: CustomButton(
                                                    text: 'Mark as Completed',
                                                    isPrimary: false,
                                                  ),
                                                ),
                                                SizedBoxHeight10,
                                                Row(
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/icons/info_color.svg',
                                                    ),
                                                    SizedBoxWidth10,
                                                    Text(
                                                      'Task can be declined before 5 hours',
                                                      style: $styles.text
                                                          .poppins12_400secondary600,
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: SizedBox(
                                width: 220,
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  // shape: RoundedRectangleBorder(),
                                  decoration: BoxDecoration(
                                    color: $styles.colors.background,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15) //
                                        ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(Icons.timer_outlined),
                                          SizedBoxWidth10,
                                          Text(
                                            "11:00 AM - 12:00 PM",
                                            style: $styles
                                                .text.poppins12_400tertiary900,
                                          )
                                        ],
                                      ),
                                      SizedBoxHeight15,
                                      Text(
                                        "Presentation of the house in the Forest valley",
                                        style: $styles
                                            .text.poppins14_400tertiary900,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBoxHeight10,
                      Text(
                        "Jobs for you",
                        style: $styles.text.poppins16_500tertiary900,
                      ),
                      SizedBoxHeight10,
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              router.go(
                                  '${RouteStrings.homePage}/postrequestdetails');
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBoxHeight5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          child: SvgPicture.asset(
                                            "assets/images/personImage.svg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBoxWidth10,
                                        Column(
                                          children: [
                                            Text(
                                              "Jordan Taylor",
                                              style: $styles.text
                                                  .poppins14_500tertiary900,
                                            ),
                                            Text(
                                              "Canada/Ontario",
                                              style: $styles.text
                                                  .poppins12_400tertiary400,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    PopupMenuButton(
                                        child: const Icon(
                                          Icons.more_vert_outlined,
                                        ),
                                        itemBuilder: (context) {
                                          return <PopupMenuItem>[
                                            const PopupMenuItem(
                                              child: Text('Save Job'),
                                            ),
                                            const PopupMenuItem(
                                                child: Text('data'))
                                          ];
                                        })
                                  ],
                                ),
                                SizedBoxHeight10,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: $styles.colors.tertiary400,
                                    ),
                                    SizedBoxWidth10,
                                    Text(
                                      "200 Albert St, S4R 2N4",
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight10,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: $styles.colors.tertiary400,
                                    ),
                                    SizedBoxWidth10,
                                    Text(
                                      "20th September 2023 at 4:30 PM",
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight10,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: $styles.colors.tertiary400,
                                    ),
                                    SizedBoxWidth10,
                                    Text(
                                      "Showing property to Clients",
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight10,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money_outlined,
                                      color: $styles.colors.tertiary400,
                                    ),
                                    SizedBoxWidth10,
                                    Text(
                                      "Flat Fee - \$100",
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight10,
                                Text("6 hours ago",
                                    style:
                                        $styles.text.poppins12_400tertiary400),
                                const Divider(
                                  thickness: 2,
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
