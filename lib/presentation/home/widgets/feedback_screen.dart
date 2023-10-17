import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:monkey_talk/core/styles.dart/stylekit.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_Button.dart';
import 'package:monkey_talk/core/utils.dart/reusable_widgets/custom_tff.dart';
import 'package:monkey_talk/core/utils.dart/sized_boxes.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text('Feedback'),
              Spacer(),
              Text(
                'Skip',
                // style: $styles.text.poppins12_500primary200,
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBoxHeight30,
              Text(
                'Write how satisfied are you with the service.',
                style: $styles.text.poppins12_400tertiary900,
              ),
              SizedBoxHeight40,
              Center(
                child: RatingBar.builder(
                  initialRating: 0,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  // itemPadding: const EdgeInsets.only(left: 10),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBoxHeight40,
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: $styles.colors.tertiary200),
                    borderRadius: BorderRadius.circular(8)),
                height: 185,
                width: double.infinity,
                child: Text(
                  'Write your feedback here',
                  style: $styles.text.poppins12_400tertiary400,
                ),
              ),
              // Container(
              //   height: 185,
              //   width: double.infinity,
              //   child: CustomTFF(
              //     hint: 'Write your feedback here',
              //   ),
              // ),
              SizedBoxHeight30,
              const SizedBox(height: 39, child: CustomButton(text: 'Submit'))
            ],
          ),
        ),
      ),
    );
  }
}
