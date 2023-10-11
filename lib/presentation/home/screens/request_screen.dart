import 'package:flutter/material.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('1 day ago'),
              SizedBoxHeight20,
              // ListView.builder(itemBuilder: (BuildContext context, int index) {
              //   return const Row(
              //     children: [
              //       CircleAvatar(
              //         radius: 30,
              //       ),
              //       SizedBoxWidth5,
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text('Showing property to clients'),
              //           SizedBoxHeight4,
              //           Text('200 Albert St, S4R 2N4')
              //         ],
              //       ),
              //       Spacer(),
              //       Icon(Icons.more_vert)
              //     ],
              //   );
              // }),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  SizedBoxWidth5,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Showing property to clients'),
                      SizedBoxHeight4,
                      Text('200 Albert St, S4R 2N4')
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBoxHeight12,
              Row(
                children: [
                  Icon(Icons.history_toggle_off_sharp),
                  SizedBoxWidth5,
                  Text('20th September 2023 at 4:30 PM')
                ],
              ),
              SizedBoxHeight8,
              Row(
                children: [
                  Icon(Icons.attach_money),
                  Text('Flat Fee - 100'),
                ],
              ),
              SizedBoxHeight15,
              Text('6 hours ago'),
              SizedBoxHeight15,
              CustomButton(
                text: 'Track',
                isPrimary: false,
              ),
              SizedBoxHeight5,
              Divider(
                thickness: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
