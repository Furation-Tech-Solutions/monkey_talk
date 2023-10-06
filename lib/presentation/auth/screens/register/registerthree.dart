import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_button_with_borderline.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';
import 'package:camera/camera.dart';

class RegisterThree extends StatefulWidget {
  const RegisterThree({super.key});

  @override
  State<RegisterThree> createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  late CameraController cameraController;

  @override
  void initState() {
    initalizeEverything();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(),
            Text(
              "Profile photo successfully set",
              style: $styles.text.poppins20_500black,
            ),
            SizedBoxHeight10,
            SizedBoxHeight50,
            Center(
              child: CircleAvatar(
                  radius: 52,
                  backgroundColor: $styles.colors.tertiary200,
                  child: SvgPicture.asset('assets/images/personImage.svg')),
            ),
            SizedBoxHeight50,
            CustomButton(
              text: "Take a photo",
              onTap: () async {
                await cameraController.takePicture();
              },
            ),
            SizedBoxHeight15,
            CustomButtonWithBorderLine(text: "Change Photo")
          ],
        ),
      ),
    );
  }

  Future<CameraController> initalizeEverything() async {
    final cameras = await availableCameras();
    return CameraController(cameras[0], ResolutionPreset.medium);
  }
}
