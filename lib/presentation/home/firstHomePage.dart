import 'package:flutter/material.dart';
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
      body: Column(
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
                  SizedBoxHeight10,
                  Text(
                    "200 Albert St, S4R 2N4",
                    style: $styles.text.poppins12_400tertiary400,
                  ),
                ],
              ),
              SizedBoxWidth15,
              CircleAvatar(
                radius: 21,
                backgroundColor: $styles.colors.primary200,
                child: Icon(Icons.notifications_active),
              )
            ],
          )
        ],
      ),
    );
  }
}
