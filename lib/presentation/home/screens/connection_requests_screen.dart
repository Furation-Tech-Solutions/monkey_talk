import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class ConnectionRequestsScreen extends StatelessWidget {
  const ConnectionRequestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(
            'Connection Requests',
            style: $styles.text.poppins16_500tertiary900,
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.separated(
                itemCount: 6,
                separatorBuilder: (context, index) {
                  return SizedBoxHeight10;
                },
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      SizedBoxWidth10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jude Smith',
                            style: $styles.text.poppins14_400tertiary900,
                          ),
                          Text(
                            'Male - Canada/Ontario',
                            style: $styles.text.poppins12_400tertiary400,
                          )
                        ],
                      ),
                      const Spacer(),
                      const SizedBox(
                        height: 29,
                        width: 63,
                        child: CustomButton(text: 'Accept'),
                      ),
                      SizedBoxWidth10,
                      const SizedBox(
                        height: 29,
                        width: 63,
                        child: CustomButton(
                          text: 'Delete',
                          isPrimary: false,
                        ),
                      )
                    ],
                  );
                })),
      ),
    );
  }
}
