import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

import '../../../core/styles.dart/stylekit.dart';

class PostRequestDetailsScreen extends StatefulWidget {
  const PostRequestDetailsScreen({super.key});

  @override
  State<PostRequestDetailsScreen> createState() =>
      _PostRequestDetailsScreenState();
}

class _PostRequestDetailsScreenState extends State<PostRequestDetailsScreen> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: const Text('Job Details'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxHeight30,
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
                          'Jordan Taylor',
                          style: $styles.text.poppins16_500tertiary900,
                        ),
                        Text(
                          'Canada/Ontario',
                          style: $styles.text.poppins12_400tertiary400,
                        ),
                        Text(
                          '6 hours ago',
                          style: $styles.text.poppins12_400tertiary400,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBoxHeight15,
                const Divider(
                  thickness: 2,
                ),
                SizedBoxHeight15,
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/location.svg'),
                    SizedBoxWidth10,
                    Text(
                      "200 Albert St, S4R 2N4",
                      style: $styles.text.poppins14_400tertiary900,
                    ),
                  ],
                ),
                SizedBoxHeight18,
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/clock.svg'),
                    SizedBoxWidth10,
                    Text(
                      "20th September 2023 at 4:30 PM",
                      style: $styles.text.poppins14_400tertiary900,
                    ),
                  ],
                ),
                SizedBoxHeight18,
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/info.svg'),
                    SizedBoxWidth10,
                    Text(
                      "Showing property to Clients",
                      style: $styles.text.poppins14_400tertiary900,
                    ),
                  ],
                ),
                SizedBoxHeight18,
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/dollar.svg'),
                    SizedBoxWidth10,
                    Text(
                      "Flat Fee - \$100",
                      style: $styles.text.poppins14_400tertiary900,
                    )
                  ],
                ),
                SizedBoxHeight18,
                Row(
                  children: [
                    SvgPicture.asset('assets/icons/hourglass.svg'),
                    SizedBoxWidth10,
                    Text(
                      "Apply by 18th September 2023",
                      style: $styles.text.poppins14_400tertiary900,
                    )
                  ],
                ),
                SizedBoxHeight15,
                const Divider(
                  thickness: 2,
                ),
                SizedBoxHeight20,
                Text(
                  'Details',
                  style: $styles.text.poppins16_500black,
                ),
                SizedBoxHeight15,
                const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.'),
                const Spacer(),
                isApplied
                    ? const CustomButton(
                        text: 'Applied',
                        isPrimary: false,
                      )
                    : Row(
                        children: [
                          const Expanded(
                            child: CustomButton(
                              text: 'Save',
                              isPrimary: false,
                            ),
                          ),
                          SizedBoxWidth15,
                          Expanded(
                              child: CustomButton(
                            text: 'Apply',
                            onTap: () {
                              setState(() {
                                isApplied = true;
                              });
                            },
                          ))
                        ],
                      )
              ],
            ),
          )),
    );
  }
}
