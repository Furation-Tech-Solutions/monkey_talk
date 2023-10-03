import 'package:flutter/material.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';
import 'package:camera/camera.dart';

class RegisterTwo extends StatefulWidget {
  const RegisterTwo({super.key});

  @override
  State<RegisterTwo> createState() => _RegisterTwoState();
}

class _RegisterTwoState extends State<RegisterTwo> {
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
              "Set your profile photo",
              style: $styles.text.poppins20_500black,
            ),
            SizedBoxHeight10,
            Text("Capture a photo in ideal daylight for clarity ",
                style: $styles.text.poppins14_400tertiary400),
            SizedBoxHeight50,
            Center(
              child: CircleAvatar(
                radius: 52,
                backgroundColor: $styles.colors.tertiary200,
                child: Center(
                  child: Icon(
                    Icons.person,
                    size: 24,
                  ),
                ),
              ),
            ),
            SizedBoxHeight50,
            CustomButton(
              text: "Take a photo",
              onTap: () async {
                await cameraController.takePicture();
              },
            )
          ],
        ),
      ),
    );
  }

  initalizeEverything() async {
    final cameras = await availableCameras();
    cameraController = CameraController(cameras[0], ResolutionPreset.medium);
  }
}
