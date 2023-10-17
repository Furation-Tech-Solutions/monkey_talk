import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/styles.dart/stylekit.dart';
import '../../../core/utils.dart/reusable_widgets/custom_tff.dart';
import '../../../core/utils.dart/sized_boxes.dart';

class PostJobsScreen extends StatelessWidget {
  const PostJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
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
                  CircleAvatar(
                    radius: 21,
                    backgroundColor: $styles.colors.primary200,
                    child: const Icon(Icons.notifications_active),
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
                        border: Border.all(color: $styles.colors.tertiary200),
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
              SizedBoxHeight15,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Jobs Assigned (3)",
                            style: $styles.text.poppins16_500tertiary900,
                          ),
                          Text(
                            "View All",
                            style: $styles.text.poppins12_500primary200,
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
                            return SizedBox(
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
                                      style:
                                          $styles.text.poppins14_400tertiary900,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBoxHeight10,
                      Text(
                        'My posted jobs',
                        style: $styles.text.poppins16_500tertiary900,
                      ),
                      SizedBoxHeight12,
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/job.svg",
                                    ),
                                    SizedBoxWidth10,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Showing property to clients',
                                          style: $styles
                                              .text.poppins14_500tertiary900,
                                        ),
                                        Text('200 Albert St, S4R 2N4',
                                            style: $styles
                                                .text.poppins12_400tertiary400),
                                      ],
                                    ),
                                    const Spacer(),
                                    PopupMenuButton(
                                        child: const Icon(
                                          Icons.more_vert_outlined,
                                        ),
                                        itemBuilder: (context) {
                                          return <PopupMenuItem>[
                                            const PopupMenuItem(
                                              child: Text('Edit'),
                                            ),
                                            const PopupMenuItem(
                                              child: Text('Delete'),
                                            ),
                                          ];
                                        })
                                  ],
                                ),
                                SizedBoxHeight20,
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/clock.svg",
                                      height: 16,
                                      width: 16,
                                    ),
                                    SizedBoxWidth5,
                                    Text(
                                      '20th September 2023 at 4:30 PM',
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight8,
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/icons/dollar_rounded.svg",
                                      height: 16,
                                      width: 16,
                                    ),
                                    SizedBoxWidth5,
                                    Text(
                                      'Flat Fee - \$100',
                                      style:
                                          $styles.text.poppins12_400tertiary900,
                                    )
                                  ],
                                ),
                                SizedBoxHeight12,
                                Text(
                                  '6 hours ago',
                                  style: $styles.text.poppins12_400tertiary400,
                                ),
                                SizedBoxHeight5,
                                const Divider(
                                  thickness: 2,
                                )
                              ],
                            );
                          })
                      /////
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Row(
                      //       children: [
                      //         SvgPicture.asset(
                      //           "assets/icons/job.svg",
                      //         ),
                      //         SizedBoxWidth10,
                      //         Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Text(
                      //               'Showing property to clients',
                      //               style:
                      //                   $styles.text.poppins14_500tertiary900,
                      //             ),
                      //             Text('200 Albert St, S4R 2N4',
                      //                 style: $styles
                      //                     .text.poppins12_400tertiary400),
                      //           ],
                      //         ),
                      //         const Spacer(),
                      //         const Icon(Icons.more_vert)
                      //       ],
                      //     ),
                      //     SizedBoxHeight20,
                      //     Row(
                      //       children: [
                      //         SvgPicture.asset(
                      //           "assets/icons/clock.svg",
                      //           height: 16,
                      //           width: 16,
                      //         ),
                      //         SizedBoxWidth5,
                      //         Text(
                      //           '20th September 2023 at 4:30 PM',
                      //           style: $styles.text.poppins12_400tertiary900,
                      //         )
                      //       ],
                      //     ),
                      //     SizedBoxHeight8,
                      //     Row(
                      //       children: [
                      //         SvgPicture.asset(
                      //           "assets/icons/dollar_rounded.svg",
                      //           height: 16,
                      //           width: 16,
                      //         ),
                      //         SizedBoxWidth5,
                      //         Text(
                      //           'Flat Fee - \$100',
                      //           style: $styles.text.poppins12_400tertiary900,
                      //         )
                      //       ],
                      //     ),
                      //     SizedBoxHeight12,
                      //     Text(
                      //       '6 hours ago',
                      //       style: $styles.text.poppins12_400tertiary400,
                      //     ),
                      //     SizedBoxHeight5,
                      //     const Divider(
                      //       thickness: 2,
                      //     )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
