import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $styles.colors.background,
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on),
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
                  child: Icon(Icons.notifications_active),
                ),
              ],
            ),
            SizedBoxHeight10,
            Row(
              children: [
                Expanded(
                  child: Container(
                    constraints: BoxConstraints(
                      minHeight: 30,
                      maxHeight: 40,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(color: $styles.colors.tertiary200),
                        color: $styles.colors.white,
                        borderRadius: BorderRadius.circular(4)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 2),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                                onTap: () {
                                  // When Search Input Entered
                                },
                                child: Icon(
                                  Icons.search,
                                  color: $styles.colors.tertiary600,
                                )),
                            hintText: "Search",
                            hintStyle: $styles.text.poppins14_400tertiary400),
                        onChanged: (value) {},
                      ),
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
                      'assets/images/filter.svg',
                      height: 19,
                      width: 24,
                    ),
                  ),
                )
              ],
            ),
            SizedBoxHeight15,
            Expanded(child: Container(color: $styles.colors.white))
          ],
        ),
      ),
    );
  }
}
