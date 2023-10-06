import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/styles.dart/stylekit.dart';
import '../../../core/utils.dart/sized_boxes.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: Row(
            children: [
              Expanded(
                  child: Divider(
                color: $styles.colors.grey,
              )),
              SizedBoxWidth10,
              Text('Or', style: $styles.text.lato14_400grey5),
              SizedBoxWidth10,
              Expanded(
                  child: Divider(
                color: $styles.colors.grey,
              )),
            ],
          ),
        ),
        SizedBoxHeight40,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: $styles.colors.tertiary900,
              child: SvgPicture.asset('assets/images/google.svg'),
            ),
            SizedBoxWidth10,
            CircleAvatar(
              radius: 24,
              backgroundColor: $styles.colors.tertiary900,
              child: SvgPicture.asset('assets/images/apple.svg'),
            ),
          ],
        ),
      ],
    );
  }
}
