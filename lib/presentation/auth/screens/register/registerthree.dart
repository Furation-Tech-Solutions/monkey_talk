import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button_with_borderline.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:camera/camera.dart';

class RegisterProfileScreenWithPhoto extends StatelessWidget {
  const RegisterProfileScreenWithPhoto({
    super.key,
    required this.cameraController,
  });

  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Profile photo successfully set",
          style: $styles.text.poppins20_500tertiary900,
        ),
        SizedBoxHeight10,
        SizedBoxHeight50,
        Center(
          child: CircleAvatar(
              radius: 52,
              backgroundColor: $styles.colors.tertiary200,
              child: SvgPicture.asset('assets/icons/personImage.svg')),
        ),
        SizedBoxHeight50,
        CustomButton(
          text: "Take a photo",
          onTap: () async {
            await cameraController.takePicture();
          },
        ),
        SizedBoxHeight15,
        const CustomButtonWithBorderLine(text: "Change Photo"),
      ],
    );
  }
}
