import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class BlockedUserScreen extends StatelessWidget {
  const BlockedUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBoxHeight15;
                  },
                  shrinkWrap: true,
                  itemCount: 5,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        const CircleAvatar(
                          radius: 20,
                          child: Text('data'),
                        ),
                        SizedBoxWidth10,
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jude Smith'),
                            SizedBoxHeight5,
                            Text('One Time Visit'),
                          ],
                        ),
                        const Spacer(),
                        SizedBox(
                          width: 69,
                          height: 29,
                          child: CustomButton(
                            text: 'Unblock',
                            textStyle:
                                TextStyle(color: $styles.colors.tertiary900),
                            isPrimary: false,
                          ),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
