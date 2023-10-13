import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class UpComingTasksScreen extends StatelessWidget {
  const UpComingTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Upcoming Tasks'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBoxHeight20,
              Center(
                child: Text(
                  'You can apply for a maximum of 5 jobs.',
                  style: $styles.text.poppins14_400tertiary400,
                ),
              ),
              SizedBoxHeight20,
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icons/clock.svg",
                              color: $styles.colors.tertiary900,
                              height: 10.83,
                            ),
                            SizedBoxWidth8,
                            Text(
                              '11:00 AM - 12:00 PM',
                              style: $styles.text.poppins12_400tertiary400,
                            )
                          ],
                        ),
                        SizedBoxHeight8,
                        Text(
                          'Presentation of the house in the Forest valley with clients',
                          style: $styles.text.poppins14_400tertiary900,
                        ),
                        SizedBoxHeight8,
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    );
                  })
              // Column(
              //   children: [
              //     Row(
              //       children: [
              //         SvgPicture.asset(
              //           "assets/icons/clock.svg",
              //           color: $styles.colors.tertiary900,
              //           height: 10.83,
              //         ),
              //         SizedBoxWidth8,
              //         Text(
              //           '11:00 AM - 12:00 PM',
              //           style: $styles.text.poppins12_400tertiary400,
              //         )
              //       ],
              //     ),
              //     SizedBoxHeight10,
              //     Text(
              //       'Presentation of the house in the Forest valley with clients',
              //       style: $styles.text.poppins14_400tertiary900,
              //     ),
              //     SizedBoxHeight10,
              //     Divider(
              //       thickness: 1,
              //     )
              //   ],
              // )

              ////////
              // Row(
              //   children: [
              //     SvgPicture.asset(
              //       "assets/icons/clock.svg",
              //       color: $styles.colors.tertiary900,
              //       height: 10.83,
              //     ),
              //     SizedBoxWidth8,
              //     Text(
              //       '11:00 AM - 12:00 PM',
              //       style: $styles.text.poppins12_400tertiary400,
              //     )
              //   ],
              // ),
              // SizedBoxHeight10,
              // Text(
              //   'Presentation of the house in the Forest valley with clients',
              //   style: $styles.text.poppins14_400tertiary900,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
