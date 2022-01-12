import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'daily_review_view.dart';
import '../widgets/daily_practice_selection_widget.dart';
import '../../../../shared/widgets/rounded_button.dart';

class DailyReviewDialog extends StatelessWidget {
  const DailyReviewDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF5EC5FF),
              Color(0xFF282F54),
              Color(0xFF172155),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Daily Practice',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              'Practice Daily to get results',
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white54),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              // width: 357,
              height: 236,
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white10, Color(0xFFC4C4C4).withOpacity(0.02)],
                ),
              ),
              child: Column(
                children: [
                  DailyPracticeSelectionWidget(
                    practiceLength: 'Short',
                    wordCount: 30,
                    onTap: () {},
                    percent: 0.3,
                    color: Color(0xFFF178B6),
                  ),
                  DailyPracticeSelectionWidget(
                    practiceLength: 'Medium',
                    wordCount: 80,
                    onTap: () {},
                    percent: 0.7,
                    color: Color(0xFF6FCF97),
                    isPremium: true,
                  ),
                  DailyPracticeSelectionWidget(
                    practiceLength: 'Complete',
                    wordCount: 100,
                    onTap: () {},
                    percent: 1.0,
                    color: Color(0xFFA5A6F6),
                    isSelected: true,
                    isPremium: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            GradientRoundedButtonWidget(
              buttonText: 'Start',
              onpressed: () {
                Get.to(DailyReviewView());
              },
              width: 500,
              colors: const [
                Color.fromRGBO(70, 242, 255, 1.0),
                Color.fromRGBO(244, 87, 202, 1.0),
                // Colors.deepPurple.shade200,
              ],
              begin: Alignment(0, -3),
              end: Alignment(0, 1),
              // begin: Alignment.centerLeft,
              // end: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}
