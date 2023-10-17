import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
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
  List<String> fronTimeList = List.generate(24, (hour) {
    final period = hour < 12 ? 'AM' : 'PM';
    final hourIn12HourFormat = hour == 0
        ? 12
        : hour <= 12
            ? hour
            : hour - 12;
    return '$hourIn12HourFormat:00 $period';
  });

  List<String> toTimeList = List.generate(24, (hour) {
    final period = hour < 12 ? 'AM' : 'PM';
    final hourIn12HourFormat = hour == 0
        ? 12
        : hour <= 12
            ? hour
            : hour - 12;
    return '$hourIn12HourFormat:00 $period';
  });

// //from current time
//   List<String> timeOptions = List.generate(24, (hour) {
//     final now = DateTime.now();
//     final startHour = now.hour;
//     final period = (startHour + hour) < 12 ? 'AM' : 'PM';
//     final hourIn12HourFormat = (startHour + hour) == 0
//         ? 12
//         : ((startHour + hour) <= 12
//             ? (startHour + hour)
//             : (startHour + hour - 12));
//     return '$hourIn12HourFormat:00 $period';
//   });
  String? selectedFromTime;

  String? selectedToTime;

  List<String> jobs = [
    "Showing Property to Clients",
    "One time visit",
    "Help with open house",
    "Writing CMA (Comparative market analysis)",
    "Writing an Offer",
    "Helping with Home Inspection",
    "Others"
  ];

  String? selectedJob;

  String? selectedRate;
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxHeight15,
                Text(
                  'Location *',
                  style: $styles.text.poppins14_400tertiary900,
                ),
                SizedBoxHeight10,
                //TODO:DROPDOWN
                const CustomTFF(
                  hint: '',
                ),
                SizedBoxHeight15,
                Text(
                  'Address *',
                  style: $styles.text.poppins14_400tertiary900,
                ),
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
                    const Expanded(
                      child: Text(
                          'Address will only be displayed to the final applicant selected for the job.'),
                    ),
                  ],
                ),
                SizedBoxHeight20,
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From Time *',
                            style: $styles.text.poppins14_400tertiary900,
                          ),
                          SizedBoxHeight8,
                          DropdownButtonFormField<String>(
                            hint: const Text('Select Time'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: $styles.colors.tertiary200)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: $styles.colors.tertiary200,
                                ),
                              ),
                            ),
                            value: selectedFromTime,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedFromTime = newValue!;
                              });
                            },
                            items: fronTimeList.map((String time) {
                              return DropdownMenuItem<String>(
                                value: time,
                                child: Text(time),
                              );
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBoxWidth10,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'To Time *',
                            style: $styles.text.poppins14_400tertiary900,
                          ),
                          SizedBoxHeight8,
                          DropdownButtonFormField<String>(
                            hint: const Text('Select Time'),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide(
                                      color: $styles.colors.tertiary200)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: $styles.colors.tertiary200,
                                ),
                              ),
                            ),
                            value: selectedToTime,
                            onChanged: (String? newValue) {
                              setState(() {
                                selectedToTime = newValue!;
                              });
                            },
                            items: toTimeList.map((String time) {
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
                ),
                SizedBoxHeight15,
                Text(
                  'Job Type *',
                  style: $styles.text.poppins14_400tertiary900,
                ),
                SizedBoxHeight8,
                DropdownButtonFormField<String>(
                  hint: const Text('Select Job'),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            BorderSide(color: $styles.colors.tertiary200)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: $styles.colors.tertiary200,
                      ),
                    ),
                  ),
                  value: selectedJob,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedJob = newValue!;
                    });
                  },
                  items: jobs.map((String job) {
                    return DropdownMenuItem<String>(
                      value: job,
                      child: Text(job),
                    );
                  }).toList(),
                ),
                SizedBoxHeight15,
                Text(
                  'Client’s Email *',
                  style: $styles.text.poppins14_400tertiary900,
                ),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Email id',
                ),
                SizedBoxHeight15,
                Text(
                  'Client’s Phone No. *',
                  style: $styles.text.poppins14_400tertiary900,
                ),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Phone No',
                ),
                SizedBoxHeight15,
                const Text('Rate *'),
                SizedBoxHeight8,
                Row(
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: "Fixed Rate",
                          // groupValue: gender,
                          groupValue: selectedRate,
                          onChanged: (value) {
                            // context.read<EditClientCubit>().gender(value!);
                            // print(value);
                            setState(() {
                              selectedRate = value!;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                        Text('Fixed Rate',
                            style: $styles.text.poppins14_400tertiary900),
                      ],
                    ),
                    SizedBoxWidth10,
                    Row(
                      children: [
                        Radio(
                          value: "Flat Fee",
                          // groupValue: gender,
                          groupValue: selectedRate,
                          onChanged: (value) {
                            // gender = value;
                            // context.read<EditClientCubit>().gender(value!);
                            setState(() {
                              selectedRate = value!;
                            });
                          },
                          activeColor: Colors.black,
                        ),
                        Text('Flat Fee',
                            style: $styles.text.poppins14_400tertiary900),
                      ],
                    ),
                  ],
                ),
                SizedBoxHeight15,
                const Text('Add Description'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight15,
                const Text('Add Attachment'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Upload File',
                  suffixIcon: Icon(Icons.attachment_rounded),
                ),
                SizedBoxHeight15,
                const CustomButton(text: 'Save Changes')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
