import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

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
                      Expanded(
                        child: Container(
                          constraints: const BoxConstraints(
                            minHeight: 30,
                            maxHeight: 40,
                          ),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: $styles.colors.tertiary200),
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
                                  hintStyle:
                                      $styles.text.poppins14_400tertiary400),
                              onChanged: (value) {},
                            ),
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
                            'assets/images/filter.svg',
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
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Tasks (3)",
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
                        height: 120,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: SizedBox(
                                width: 220,
                                child: Card(
                                  color: $styles.colors.background,
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(Icons.timer_outlined),
                                            SizedBoxWidth10,
                                            Text(
                                              "11:00 AM - 12:00 PM",
                                              style: $styles.text
                                                  .poppins12_400tertiary900,
                                            )
                                          ],
                                        ),
                                        SizedBoxHeight15,
                                        Text(
                                          "Presentation of the house in the Forest valley",
                                          style: $styles
                                              .text.poppins14_400tertiary900,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBoxHeight10,
                      Text(
                        "Recommended jobs for you",
                        style: $styles.text.poppins16_500tertiary900,
                      ),
                      SizedBoxHeight10,
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
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
                                            style: $styles
                                                .text.poppins14_500tertiary900,
                                          ),
                                          Text(
                                            "Canada/Ontario",
                                            style: $styles
                                                .text.poppins12_400tertiary400,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert_outlined,
                                        color: $styles.colors.tertiary400,
                                      ))
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
                                  style: $styles.text.poppins12_400tertiary400)
                            ],
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
