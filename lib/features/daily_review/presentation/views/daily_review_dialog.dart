import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:polygot_app/shared/widgets/rounded_button.dart';

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
            // stops: [0.1, 0.4, 0.9],
            colors: [
              // const Color(0xffFF9A5E).withOpacity(0.8),
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
                  ),
                  DailyPracticeSelectionWidget(
                    practiceLength: 'Complete',
                    wordCount: 100,
                    onTap: () {},
                    percent: 1.0,
                    color: Color(0xFFA5A6F6),
                    isSelected: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 26.0,
            ),
            RoundedButtonWidget(
              buttonText: 'Start',
              onpressed: () {
                // Get.to(StudyModeSelectionView());
              },
              width: 500,
              colors: const [
                Color.fromRGBO(70, 242, 255, 1.0),
                Color.fromRGBO(244, 87, 202, 1.0),
                // Colors.deepPurple.shade200,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ],
        ),
      ),
    );
  }
}

class DailyPracticeSelectionWidget extends StatelessWidget {
  final String practiceLength;
  final int wordCount;
  final Color color;
  final double percent;
  final bool isSelected;
  final bool isPremium;

  final VoidCallback onTap;

  const DailyPracticeSelectionWidget({
    Key? key,
    required this.practiceLength,
    required this.wordCount,
    required this.color,
    required this.percent,
    required this.onTap,
    this.isSelected = false,
    this.isPremium = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            // width: 343,
            height: 68,
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: isSelected ? Colors.white12 : null,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color(0xFF8F9BB3).withOpacity(1.0),
                      ),
                      gradient: LinearGradient(colors: [
                        Colors.white.withOpacity(0.05),
                        Color(0xFFC4C4C4).withOpacity(0.02)
                      ])),
                  child: Align(
                    child: Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(16.0),
                        shape: BoxShape.circle,
                        color: isSelected ? color : null,
                        border: Border.all(
                          color: Color(0xFF8F9BB3).withOpacity(1.0),
                        ),
                        // color: Color(0xFF8F9BB3).withOpacity(0.2),
                      ),
                      // child: Text(
                      //     MediaQuery.of(context).size.width.toString()),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          practiceLength,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17.0,
                              // height: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          '$wordCount Words',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13.0,
                              // height: 20,
                              color: Colors.white70),
                        ),
                        const SizedBox(
                          width: 84.0,
                        ),
                        if (isPremium)
                          RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.orangeAccent[400],
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0),
                                  children: [
                                TextSpan(text: 'Premium'),
                                WidgetSpan(
                                    child: Icon(
                                  Icons.star,
                                  color: Colors.orangeAccent[400],
                                  size: 12,
                                ))
                              ])),
                      ],
                    ),
                    LinearPercentIndicator(
                      percent: percent,
                      width: 274,
                      lineHeight: 9.0,
                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                      progressColor: color,
                      backgroundColor: Color(0xFFC4C4C4).withOpacity(0.32),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
