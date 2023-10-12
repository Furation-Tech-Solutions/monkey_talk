import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  // 24 hour format
  // List<String> timeOptions = List.generate(24, (hour) {
  //   return '${hour.toString().padLeft(2, '0')}:00';
  // });

  //not 24 hours
  // List<String> timeOptions = List.generate(24, (hour) {
  //   final period = hour < 12 ? 'AM' : 'PM';
  //   final hourIn12HourFormat = hour == 0
  //       ? 12
  //       : hour <= 12
  //           ? hour
  //           : hour - 12;
  //   return '$hourIn12HourFormat:00 $period';
  // });

//from current time
  List<String> timeOptions = List.generate(24, (hour) {
    final now = DateTime.now();
    final startHour = now.hour;
    final period = (startHour + hour) < 12 ? 'AM' : 'PM';
    final hourIn12HourFormat = (startHour + hour) == 0
        ? 12
        : ((startHour + hour) <= 12
            ? (startHour + hour)
            : (startHour + hour - 12));
    return '$hourIn12HourFormat:00 $period';
  });

  String? selectedTime;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('Posts'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxHeight15,
              const Text('Location *'),
              SizedBoxHeight10,
              //TODO:DROPDOWN
              const CustomTFF(
                hint: '',
              ),
              SizedBoxHeight15,
              const Text('Address *'),
              SizedBoxHeight10,
              const CustomTFF(
                hint: 'Enter address',
              ),
              SizedBoxHeight8,
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/info.svg',
                    color: $styles.colors.recoBadge,
                  ),
                  const Text(
                      'Address will only be displayed to the final applicant selected for the job.'),
                ],
              ),
              SizedBoxHeight20,
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('From Time *'),
                        DropdownButton<String>(
                          value: selectedTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedTime = newValue!;
                            });
                          },
                          items: timeOptions.map((String time) {
                            return DropdownMenuItem<String>(
                              value: time,
                              child: Text(time),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('To Time *'),
                        DropdownButton<String>(
                          value: selectedTime,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedTime = newValue!;
                            });
                          },
                          items: timeOptions.map((String time) {
                            return DropdownMenuItem<String>(
                              value: time,
                              child: Text(time),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
