import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';
import 'package:monkey_talk/presentation/auth/blocs/register/register_state.dart';
import 'package:monkey_talk/presentation/auth/screens/register/registerthree.dart';
import 'package:monkey_talk/presentation/auth/widgets/appHeader.dart';
import 'package:camera/camera.dart';

import '../../blocs/register/register_cubit.dart';

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
            const AppHeader(),
            BlocBuilder<RegisterCubit, RegisterState>(
              builder: (context, state) {
                return state.profileImage == null
                    ? registerProfilePhotoScreen(
                        cameraController: cameraController)
                    : RegisterProfileScreenWithPhoto(
                        cameraController: cameraController);
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
    await cameraController.initialize();
  }
}

class registerProfilePhotoScreen extends StatelessWidget {
  const registerProfilePhotoScreen({
    super.key,
    required this.cameraController,
  });

  final CameraController cameraController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            child: const Center(
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
            // router.go(RouteStrings.registerThree);
            context.read<RegisterCubit>().updateImage(File(
                await cameraController
                    .takePicture()
                    .then((value) => value.path)));
          },
        ),
      ],
    );
  }
}
