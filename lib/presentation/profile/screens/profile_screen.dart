import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 12),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
