import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: $styles.colors.background,
              child:  Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.location_on),
                        Column(
                          children: [
                            Text('data'),
                            Text('data'),
                          ],
                        ),
                      ],
                    ),
                    SizedBoxHeight10,
                    Row(
                      children: [
                        CustomTFF(
                          suffixIcon: const Icon(
                            Icons.search_outlined,
                            size: 30,
                          ),
                          hint: 'Search',hintstyle: $styles.text.poppins14_400tertiary400,
                        ),
                        SizedBoxWidth10,
                        Icon(Icons.filter)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
