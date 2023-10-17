import 'package:flutter/material.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Messages'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxHeight8,
              const CustomTFF(
                hint: 'Search',
                suffixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              SizedBoxHeight20,
              const Text('Unread(2)'),
              SizedBoxHeight30,
              ListView.separated(
                  separatorBuilder: (context, index) {
                    return const Column(
                      children: [
                        SizedBoxHeight8,
                        Divider(
                          thickness: 2,
                        ),
                      ],
                    );
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const Row(
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBoxWidth10,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Emily Gomez'),
                            SizedBoxHeight8,
                            Text('Hello, How are you?'),
                          ],
                        ),
                        Spacer(),
                        Column(
                          children: [
                            Text('12:30pm'),
                            SizedBoxHeight8,
                            CircleAvatar(
                              radius: 13,
                              child: Text('3'),
                            )
                          ],
                        )
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
