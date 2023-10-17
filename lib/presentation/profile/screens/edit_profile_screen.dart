import 'package:flutter/material.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String dropdownvalue = 'Male';
  final List<String> list = [
    'Male',
    "Female",
    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Edit Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBoxHeight40,
                const Center(
                  child: CircleAvatar(
                    radius: 55.5,
                    // child:
                    //     Positioned(right: 10, bottom: 10, child: Icon(Icons.add)),
                  ),
                ),
                const Center(child: Text('Click here to change profile photo')),
                SizedBoxHeight40,
                const Text('First name *'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight15,
                const Text('Last name *'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight15,
                const Text('Gender *'),
                SizedBoxHeight8,
                SizedBox(
                  height: 55,
                  child: DropdownButtonFormField(
                    isDense: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    items: list.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
                SizedBoxHeight15,
                const Text('Location *'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight15,
                const Text('About *'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight15,
                const Text('LinkedIn'),
                SizedBoxHeight8,
                const CustomTFF(
                  hint: 'Type here',
                ),
                SizedBoxHeight25,
                const CustomButton(
                  text: 'Save Information',
                  isPrimary: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
